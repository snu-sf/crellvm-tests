	.text
	.file	"unit-editor.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rdx
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %r8
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movabsq	$query.args, %rbx
	xorl	%r14d, %r14d
	movl	%r14d, %r15d
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	movl	%r10d, -64(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.9, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.2, %rdi
	xorl	%esi, %esi
	movabsq	$.L.str.10, %rdx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_plugin_icon_register
	movl	%eax, -72(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.11, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.11, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -64(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$1, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.2, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movl	$3, run.values+8
	callq	unit_editor_dialog
.LBB1_4:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.align	16, 0x90
	.type	unit_editor_dialog,@function
unit_editor_dialog:                     # @unit_editor_dialog
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
	pushq	%rbx
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp16:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.13, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	callq	gimp_unit_get_type
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gdk_color_get_type
	movl	$11, %edi
	movl	$20, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	$64, %ecx
	movl	%ecx, %edx
	movl	$60, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$24, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	$64, (%rsp)
	movq	$64, 8(%rsp)
	movq	$64, 16(%rsp)
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, 24(%rsp)
	movq	$20, 32(%rsp)
	movq	%rax, 40(%rsp)
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movabsq	$.L.str.15, %rsi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.2, %r9
	movabsq	$.L.str.16, %rdi
	movl	$1, %r11d
	movabsq	$.L.str.17, %r10
	movl	$4294967289, %ebx       # imm = 0xFFFFFFF9
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-7, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -140(%rbp)        # 4-byte Spill
	movl	%r11d, -144(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967289, %esi       # imm = 0xFFFFFFF9
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movabsq	$.L.str.18, %rsi
	movabsq	$unit_editor_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.19, %rsi
	movabsq	$gtk_main_quit, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	-168(%rbp), %r8         # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_new
	movabsq	$.L.str.13, %rdi
	movq	%rax, -32(%rbp)
	callq	gtk_action_group_new
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_action_group_set_translation_domain
	movabsq	$actions, %rsi
	movl	$3, %edx
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_action_group_add_actions
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_accel_group
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_add_accel_group
	movq	-32(%rbp), %rdi
	callq	gtk_ui_manager_get_accel_group
	movq	%rax, %rdi
	callq	gtk_accel_group_lock
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_ui_manager_insert_action_group
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.20, %rsi
	movq	$-1, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-32(%rbp), %rdi
	callq	gtk_ui_manager_add_ui_from_string
	movabsq	$.L.str.21, %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gtk_ui_manager_get_widget
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$220, %edx
	movq	-64(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_cell_renderer_toggle_new
	movq	%rax, -96(%rbp)
	movq	columns, %rdi
	callq	gettext
	movabsq	$.L.str.22, %rdx
	xorl	%ecx, %ecx
	movabsq	$.L.str.23, %r8
	movl	$9, %r9d
	movabsq	$.L.str.24, %rsi
	movl	$10, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-96(%rbp), %r10
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	movl	%r11d, -292(%rbp)       # 4-byte Spill
	callq	gtk_tree_view_column_new_with_attributes
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movq	-72(%rbp), %rdi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	gtk_tree_view_column_get_widget
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB3_4
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_get_ancestor
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then.49
	movq	-88(%rbp), %rdi
	movq	columns+8, %rax
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.51
	movabsq	$.L.str.25, %rsi
	movabsq	$saved_toggled_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$0, -100(%rbp)
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB3_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-100(%rbp), %rax
	cmpq	$8, %rax
	jae	.LBB3_14
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB3_5 Depth=1
	cmpl	$0, -100(%rbp)
	jne	.LBB3_8
# BB#7:                                 # %if.then.56
                                        #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_13
.LBB3_8:                                # %if.end.57
                                        #   in Loop: Header=BB3_5 Depth=1
	movabsq	$columns, %rax
	movslq	-100(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	callq	gettext
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.26, %rdx
	movabsq	$.L.str.24, %r8
	movl	$10, %r9d
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	-100(%rbp), %esi
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movl	%esi, -356(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-356(%rbp), %r10d       # 4-byte Reload
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movq	-72(%rbp), %rdi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	callq	gtk_tree_view_column_get_widget
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB3_12
# BB#9:                                 # %if.then.66
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	-80(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_get_ancestor
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB3_11
# BB#10:                                # %if.then.70
                                        #   in Loop: Header=BB3_5 Depth=1
	movabsq	$columns, %rax
	movq	-88(%rbp), %rdi
	movslq	-100(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
.LBB3_11:                               # %if.end.74
                                        #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_12
.LBB3_12:                               # %if.end.75
                                        #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_13
.LBB3_13:                               # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB3_5
.LBB3_14:                               # %for.end
	movq	-64(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	unit_list_init
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_main
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	unit_editor_dialog, .Lfunc_end3-unit_editor_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	unit_editor_response,@function
unit_editor_response:                   # @unit_editor_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	subl	$1, %esi
	movl	%esi, -28(%rbp)         # 4-byte Spill
	jne	.LBB4_2
	jmp	.LBB4_1
.LBB4_1:                                # %sw.bb
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	unit_list_init
	jmp	.LBB4_3
.LBB4_2:                                # %sw.default
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB4_3:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	unit_editor_response, .Lfunc_end4-unit_editor_response
	.cfi_endproc

	.align	16, 0x90
	.type	saved_toggled_callback,@function
saved_toggled_callback:                 # @saved_toggled_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.65, %rdi
	movabsq	$.L.str.66, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB5_4
.LBB5_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_tree_path_free
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-68(%rbp), %rcx
	movl	$8, %r8d
	leaq	-72(%rbp), %r9
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	$-1, (%rsp)
	movb	$0, %al
	movl	%r10d, -92(%rbp)        # 4-byte Spill
	callq	gtk_tree_model_get
	movl	-72(%rbp), %edx
	movl	%edx, -96(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_number_of_built_in_units
	movl	-96(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jb	.LBB5_4
# BB#3:                                 # %if.then.7
	movl	-72(%rbp), %edi
	movl	-68(%rbp), %esi
	callq	gimp_unit_set_deletion_flag
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	cmpl	$0, -68(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_list_store_set
.LBB5_4:                                # %if.end.11
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	saved_toggled_callback, .Lfunc_end5-saved_toggled_callback
	.cfi_endproc

	.align	16, 0x90
	.type	unit_list_init,@function
unit_list_init:                         # @unit_list_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
.Ltmp26:
	.cfi_offset %rbx, -56
.Ltmp27:
	.cfi_offset %r12, -48
.Ltmp28:
	.cfi_offset %r13, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_list_store_clear
	callq	gimp_unit_get_number_of_units
	movl	%eax, -92(%rbp)
	movw	$-8739, -108(%rbp)      # imm = 0xFFFFFFFFFFFFDDDD
	movw	$-8739, -106(%rbp)      # imm = 0xFFFFFFFFFFFFDDDD
	movw	$-1, -104(%rbp)
	movl	$1, -96(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jae	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-96(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_number_of_built_in_units
	leaq	-88(%rbp), %rsi
	movl	-132(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	setae	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -116(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_list_store_append
	movq	-56(%rbp), %rdi
	movl	-96(%rbp), %eax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_deletion_flag
	cmpl	$0, %eax
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	-96(%rbp), %edi
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_identifier
	movl	-96(%rbp), %edi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_factor
	movl	-96(%rbp), %edi
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_digits
	movl	-96(%rbp), %edi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_symbol
	movl	-96(%rbp), %edi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_abbreviation
	movl	-96(%rbp), %edi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_singular
	movl	-96(%rbp), %edi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_plural
	leaq	-88(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %ecx
	movl	$3, %edi
	movl	$4, %r9d
	movl	$5, %r10d
	movl	$6, %r11d
	movl	$7, %ebx
	movl	$8, %r14d
	movl	$9, %r15d
	leaq	-112(%rbp), %r12
	movl	$4294967295, %r13d      # imm = 0xFFFFFFFF
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	$10, %ecx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	movl	-96(%rbp), %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %ecx
	cmpl	$0, -116(%rbp)
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	movl	-208(%rbp), %ecx        # 4-byte Reload
	cmovnel	%r13d, %ecx
	movq	-144(%rbp), %r13        # 8-byte Reload
	movl	%edi, -220(%rbp)        # 4-byte Spill
	movq	%r13, %rdi
	movl	-148(%rbp), %r13d       # 4-byte Reload
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	movl	%r13d, %ecx
	movq	-160(%rbp), %r13        # 8-byte Reload
	movl	%r9d, -228(%rbp)        # 4-byte Spill
	movq	%r13, %r9
	movl	$2, (%rsp)
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$3, 8(%rsp)
	movl	-172(%rbp), %r13d       # 4-byte Reload
	movl	%r13d, 16(%rsp)
	movl	$4, 24(%rsp)
	movq	-184(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	movl	$5, 40(%rsp)
	movq	-192(%rbp), %r13        # 8-byte Reload
	movq	%r13, 48(%rsp)
	movl	$6, 56(%rsp)
	movq	-200(%rbp), %r13        # 8-byte Reload
	movq	%r13, 64(%rsp)
	movl	$7, 72(%rsp)
	movq	%rax, 80(%rsp)
	movl	$8, 88(%rsp)
	movl	-212(%rbp), %r13d       # 4-byte Reload
	movl	%r13d, 96(%rsp)
	movl	$9, 104(%rsp)
	movl	-216(%rbp), %r13d       # 4-byte Reload
	movl	%r13d, 112(%rsp)
	movl	-224(%rbp), %r13d       # 4-byte Reload
	movl	%r13d, 120(%rsp)
	movq	%r12, 128(%rsp)
	movl	$-1, 136(%rsp)
	movb	$1, %al
	movl	%r11d, -232(%rbp)       # 4-byte Spill
	movl	%r10d, -236(%rbp)       # 4-byte Spill
	movl	%r15d, -240(%rbp)       # 4-byte Spill
	movl	%ebx, -244(%rbp)        # 4-byte Spill
	movl	%r14d, -248(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first
	cmpl	$0, %eax
	je	.LBB6_6
# BB#5:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gtk_tree_view_get_selection
	leaq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_selection_select_iter
.LBB6_6:                                # %if.end
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	unit_list_init, .Lfunc_end6-unit_list_init
	.cfi_endproc

	.align	16, 0x90
	.type	new_callback,@function
new_callback:                           # @new_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	new_unit_dialog
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB7_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	unit_list_init
	movq	-16(%rbp), %rdi
	callq	gtk_tree_view_get_model
	leaq	-64(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	cmpl	$0, %eax
	je	.LBB7_4
# BB#2:                                 # %land.lhs.true
	leaq	-64(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	callq	gtk_tree_model_iter_nth_child
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	gtk_tree_view_get_selection
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_selection_select_iter
	movq	-16(%rbp), %rdi
	callq	gtk_tree_view_get_vadjustment
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_upper
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	gtk_adjustment_set_value
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %if.end.12
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	new_callback, .Lfunc_end7-new_callback
	.cfi_endproc

	.align	16, 0x90
	.type	duplicate_callback,@function
duplicate_callback:                     # @duplicate_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_view_get_selection
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-64(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB8_7
# BB#1:                                 # %if.then
	leaq	-64(%rbp), %rsi
	movl	$8, %edx
	leaq	-68(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-16(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	new_unit_dialog
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB8_6
# BB#2:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	callq	unit_list_init
	leaq	-104(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	cmpl	$0, %eax
	je	.LBB8_5
# BB#3:                                 # %land.lhs.true
	leaq	-104(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	callq	gtk_tree_model_iter_nth_child
	cmpl	$0, %eax
	je	.LBB8_5
# BB#4:                                 # %if.then.13
	leaq	-104(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
	movq	-16(%rbp), %rdi
	callq	gtk_tree_view_get_vadjustment
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_upper
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	gtk_adjustment_set_value
.LBB8_5:                                # %if.end
	jmp	.LBB8_6
.LBB8_6:                                # %if.end.16
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.17
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	duplicate_callback, .Lfunc_end8-duplicate_callback
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_1:
	.quad	4607182418800017408     # double 1
.LCPI9_2:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI9_3:
	.quad	4679240012837945344     # double 65536
.LCPI9_4:
	.quad	4576918229304087675     # double 0.01
.LCPI9_5:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI9_6:
	.quad	4611686018427387904     # double 2
.LCPI9_7:
	.quad	4617315517961601024     # double 5
	.text
	.align	16, 0x90
	.type	new_unit_dialog,@function
new_unit_dialog:                        # @new_unit_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$792, %rsp              # imm = 0x318
.Ltmp40:
	.cfi_offset %rbx, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
	movabsq	$.L.str.37, %rax
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	$0, -132(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str.15, %rsi
	movl	$1, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.2, %r9
	movabsq	$.L.str.38, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.39, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-32(%rbp), %r15
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movq	%r15, %rdx
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movq	%r14, -224(%rbp)        # 8-byte Spill
	movl	%r11d, -228(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$7, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movq	%rax, -80(%rbp)
	movq	%rax, -64(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %edi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_identifier
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
.LBB9_2:                                # %if.end
	movq	-56(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-64(%rbp), %rdi
	movq	columns+24, %rcx
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	cmpl	$0, -36(%rbp)
	je	.LBB9_4
# BB#3:                                 # %cond.true
	movl	-36(%rbp), %edi
	callq	gimp_unit_get_factor
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %cond.false
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	jmp	.LBB9_5
.LBB9_5:                                # %cond.end
	movsd	-344(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-88(%rbp), %rdi
	movsd	.LCPI9_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_5, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$5, %esi
	movsd	%xmm3, -352(%rbp)       # 8-byte Spill
	movsd	-352(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-72(%rbp), %r8
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %edx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-372(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-72(%rbp), %rdi
	movq	columns+40, %rcx
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	cmpl	$0, -36(%rbp)
	je	.LBB9_7
# BB#6:                                 # %cond.true.35
	movl	-36(%rbp), %edi
	callq	gimp_unit_get_digits
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	jmp	.LBB9_8
.LBB9_7:                                # %cond.false.37
	movsd	.LCPI9_6, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	jmp	.LBB9_8
.LBB9_8:                                # %cond.end.38
	movsd	-400(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-96(%rbp), %rdi
	xorps	%xmm1, %xmm1
	movsd	.LCPI9_7, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_1, %xmm3         # xmm3 = mem[0],zero
	xorl	%esi, %esi
	movsd	%xmm1, -408(%rbp)       # 8-byte Spill
	movsd	%xmm3, -416(%rbp)       # 8-byte Spill
	movsd	-416(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-408(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-416(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-72(%rbp), %r8
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-72(%rbp), %rdi
	movq	columns+56, %rcx
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	callq	gtk_entry_new
	movq	%rax, -104(%rbp)
	movq	%rax, -64(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.49
	movq	-64(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %edi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_symbol
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
.LBB9_10:                               # %if.end.53
	movq	-56(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-64(%rbp), %rdi
	movq	columns+72, %rcx
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	callq	gtk_entry_new
	movq	%rax, -112(%rbp)
	movq	%rax, -64(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB9_12
# BB#11:                                # %if.then.62
	movq	-64(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %edi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_abbreviation
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
.LBB9_12:                               # %if.end.66
	movq	-56(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-64(%rbp), %rdi
	movq	columns+88, %rcx
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	callq	gtk_entry_new
	movq	%rax, -120(%rbp)
	movq	%rax, -64(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB9_14
# BB#13:                                # %if.then.75
	movq	-64(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %edi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_singular
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
.LBB9_14:                               # %if.end.79
	movq	-56(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$5, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-64(%rbp), %rdi
	movq	columns+104, %rcx
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	callq	gtk_entry_new
	movq	%rax, -128(%rbp)
	movq	%rax, -64(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB9_16
# BB#15:                                # %if.then.88
	movq	-64(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %edi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_plural
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
.LBB9_16:                               # %if.end.92
	movq	-56(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$6, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-64(%rbp), %rdi
	movq	columns+120, %rcx
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
.LBB9_17:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	je	.LBB9_19
# BB#18:                                # %if.then.103
	jmp	.LBB9_22
.LBB9_19:                               # %if.end.104
                                        #   in Loop: Header=BB9_17 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -144(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -152(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -156(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -168(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -176(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -184(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -192(%rbp)
	movq	-144(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	%rax, -168(%rbp)
	movq	-176(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	%rax, -192(%rbp)
	movq	-144(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-168(%rbp), %rdi
	movl	%ecx, -708(%rbp)        # 4-byte Spill
	callq	strlen
	cmpq	$0, %rax
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	-708(%rbp), %r8d        # 4-byte Reload
	orl	%ecx, %r8d
	movq	-176(%rbp), %rdi
	movl	%r8d, -712(%rbp)        # 4-byte Spill
	callq	strlen
	cmpq	$0, %rax
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	-712(%rbp), %r8d        # 4-byte Reload
	orl	%ecx, %r8d
	movq	-184(%rbp), %rdi
	movl	%r8d, -716(%rbp)        # 4-byte Spill
	callq	strlen
	cmpq	$0, %rax
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	-716(%rbp), %r8d        # 4-byte Reload
	orl	%ecx, %r8d
	movq	-192(%rbp), %rdi
	movl	%r8d, -720(%rbp)        # 4-byte Spill
	callq	strlen
	cmpq	$0, %rax
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	-720(%rbp), %r8d        # 4-byte Reload
	orl	%ecx, %r8d
	cmpl	$0, %r8d
	je	.LBB9_21
# BB#20:                                # %if.then.163
                                        #   in Loop: Header=BB9_17 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rdi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$1, %ecx
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gtk_message_dialog_new
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_message_dialog_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rdi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gtk_message_dialog_format_secondary_text
	movq	-200(%rbp), %rsi
	movq	%rsi, -760(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	movq	-200(%rbp), %rdi
	movl	%eax, -764(%rbp)        # 4-byte Spill
	callq	gtk_widget_destroy
	jmp	.LBB9_17
.LBB9_21:                               # %if.end.174
	movq	-144(%rbp), %rdi
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-156(%rbp), %esi
	movq	-168(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	-184(%rbp), %r8
	movq	-192(%rbp), %r9
	callq	gimp_unit_new
	movl	%eax, -132(%rbp)
	movq	-144(%rbp), %rdi
	callq	g_free
	movq	-168(%rbp), %rdi
	callq	g_free
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-184(%rbp), %rdi
	callq	g_free
	movq	-192(%rbp), %rdi
	callq	g_free
.LBB9_22:                               # %while.end
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-132(%rbp), %eax
	addq	$792, %rsp              # imm = 0x318
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	new_unit_dialog, .Lfunc_end9-new_unit_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
.Lfunc_end10:
	.size	g_warning, .Lfunc_end10-g_warning
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.args,@object      # @query.args
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.size	query.args, 24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0) }"
	.size	.L.str.1, 37

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"plug-in-unit-editor"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Create or alter units used in GIMP"
	.size	.L.str.3, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"The GIMP unit editor"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.5, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"2000"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"U_nits"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"<Image>/Edit/Preferences"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-tool-measure"
	.size	.L.str.10, 18

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"UTF-8"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"unit-editor"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Unit Editor"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-unit-editor"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gtk-refresh"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gtk-close"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"response"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"destroy"
	.size	.L.str.19, 8

	.type	actions,@object         # @actions
	.data
	.align	16
actions:
	.quad	.L.str.27
	.quad	0
	.quad	.L.str.28
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	0
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	new_callback
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	0
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	duplicate_callback
	.size	actions, 144

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"<ui>\n  <toolbar action=\"unit-editor-toolbar\">\n    <toolitem action=\"unit-editor-new\" />\n    <toolitem action=\"unit-editor-duplicate\" />\n  </toolbar>\n</ui>\n"
	.size	.L.str.20, 156

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"/unit-editor-toolbar"
	.size	.L.str.21, 21

	.type	columns,@object         # @columns
	.section	.rodata,"a",@progbits
	.align	16
columns:
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.size	columns, 128

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"active"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"activatable"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"cell-background-gdk"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"toggled"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"text"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"unit-editor-toolbar"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Unit Editor Toolbar"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"unit-editor-new"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gtk-new"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"<control>N"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Create a new unit from scratch"
	.size	.L.str.32, 31

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"unit-editor-duplicate"
	.size	.L.str.33, 22

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-duplicate"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"<control>D"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Create a new unit using the currently selected unit as template"
	.size	.L.str.36, 64

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Add a New Unit"
	.size	.L.str.37, 15

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gtk-cancel"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gtk-add"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_ID:"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_Factor:"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_Digits:"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_Symbol:"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"_Abbreviation:"
	.size	.L.str.44, 15

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Si_ngular:"
	.size	.L.str.45, 11

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Plural:"
	.size	.L.str.46, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Incomplete input"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Please fill in all text fields."
	.size	.L.str.48, 32

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Saved"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"A unit definition will only be saved before GIMP exits if this column is checked."
	.size	.L.str.50, 82

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"ID"
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"This string will be used to identify a unit in GIMP's configuration files."
	.size	.L.str.52, 75

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Factor"
	.size	.L.str.53, 7

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"How many units make up an inch."
	.size	.L.str.54, 32

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Digits"
	.size	.L.str.55, 7

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"This field is a hint for numerical input fields. It specifies how many decimal digits the input field should provide to get approximately the same accuracy as an \"inch\" input field with two decimal digits."
	.size	.L.str.56, 206

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Symbol"
	.size	.L.str.57, 7

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"The unit's symbol if it has one (e.g. \" for inches). The unit's abbreviation is used if doesn't have a symbol."
	.size	.L.str.58, 111

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Abbreviation"
	.size	.L.str.59, 13

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"The unit's abbreviation (e.g. \"cm\" for centimeters)."
	.size	.L.str.60, 53

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Singular"
	.size	.L.str.61, 9

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"The unit's singular form."
	.size	.L.str.62, 26

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Plural"
	.size	.L.str.63, 7

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"The unit's plural form."
	.size	.L.str.64, 24

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"%s: bad tree path?"
	.size	.L.str.65, 19

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"unit-editor.c:634"
	.size	.L.str.66, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
