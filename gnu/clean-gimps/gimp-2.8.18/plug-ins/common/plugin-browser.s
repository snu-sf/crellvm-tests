	.text
	.file	"plugin-browser.bc"
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
	subq	$80, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$1, run.values+8
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
	movq	-8(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movl	$3, run.values+8
	callq	browser_dialog_new
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_main
.LBB1_4:                                # %if.end
	addq	$80, %rsp
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
	.type	browser_dialog_new,@function
browser_dialog_new:                     # @browser_dialog_new
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
	subq	$560, %rsp              # imm = 0x230
	movabsq	$.L.str.13, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	movl	$1, %esi
	movl	%esi, %edi
	movl	$32, %esi
                                        # kill: RSI<def> ESI<kill>
	callq	g_malloc0_n
	movabsq	$.L.str.14, %rdi
	movq	%rax, -8(%rbp)
	callq	gettext
	movabsq	$.L.str.15, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.2, %r9
	movabsq	$.L.str.16, %rdi
	movl	$4294967289, %r10d      # imm = 0xFFFFFFF9
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-7, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -140(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movabsq	$.L.str.17, %rsi
	movabsq	$browser_dialog_response, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_browser_new
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rsi
	movabsq	$browser_search, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_notebook_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_browser_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	216(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movl	$6, %edi
	movl	$64, %ecx
	movl	%ecx, %eax
	movl	$40, %ecx
	movl	%ecx, %edx
	movl	$68, %ecx
	movl	%ecx, %esi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rcx
	movq	%rax, %r8
	movq	%rax, %r9
	movq	$68, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.19, %rdi
	movq	%rax, -88(%rbp)
	callq	gettext
	movabsq	$.L.str.20, %rdx
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	xorl	%esi, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_tree_view_column_set_sort_column_id
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.21, %rdi
	movq	%rax, -88(%rbp)
	callq	gettext
	movabsq	$.L.str.20, %rdx
	movl	$3, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movl	$3, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_tree_view_column_set_sort_column_id
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.22, %rdi
	movq	%rax, -88(%rbp)
	callq	gettext
	movabsq	$.L.str.20, %rdx
	movl	$4, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movl	$4, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_tree_view_column_set_sort_column_id
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.23, %rdi
	movq	%rax, -88(%rbp)
	callq	gettext
	movabsq	$.L.str.20, %rdx
	movl	$2, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movl	$1, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_tree_view_column_set_sort_column_id
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdx, %rdi
	movq	%rdx, %rsi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gtk_scrolled_window_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-32(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	movl	$250, %ecx
	movq	-56(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-56(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$2, %esi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gtk_tree_selection_set_mode
	movabsq	$.L.str.24, %rsi
	movabsq	$browser_list_selection_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	-8(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-32(%rbp), %rcx
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$6, %edi
	movl	$64, %r9d
	movl	%r9d, %eax
	movl	$40, %r9d
	movl	%r9d, %edx
	movl	$68, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rsi
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, %r8
	movq	%rax, %r9
	movq	$68, (%rsp)
	movb	$0, %al
	callq	gtk_tree_store_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.21, %rdi
	movq	%rax, -88(%rbp)
	callq	gettext
	movabsq	$.L.str.20, %rdx
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	xorl	%esi, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_tree_view_column_set_sort_column_id
	movq	-64(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.22, %rdi
	movq	%rax, -88(%rbp)
	callq	gettext
	movabsq	$.L.str.20, %rdx
	movl	$3, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movl	$3, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_tree_view_column_set_sort_column_id
	movq	-64(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.23, %rdi
	movq	%rax, -88(%rbp)
	callq	gettext
	movabsq	$.L.str.20, %rdx
	movl	$2, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movl	$1, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_tree_view_column_set_sort_column_id
	movq	-64(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdx, %rdi
	movq	%rdx, %rsi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	callq	gtk_scrolled_window_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-32(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	movl	$250, %ecx
	movq	-64(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-64(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$2, %esi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gtk_tree_selection_set_mode
	movabsq	$.L.str.24, %rsi
	movabsq	$browser_tree_selection_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	-8(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-32(%rbp), %rcx
	movl	%eax, -484(%rbp)        # 4-byte Spill
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_browser_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	264(%rax), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_widget_get_parent
	movl	$400, %esi              # imm = 0x190
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gimp_browser_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	callq	browser_search
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first
	cmpl	$0, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	leaq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_selection_select_iter
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end3:
	.size	browser_dialog_new, .Lfunc_end3-browser_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	browser_dialog_response,@function
browser_dialog_response:                # @browser_dialog_response
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdi
	callq	gtk_widget_destroy
	callq	gtk_main_quit
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	browser_dialog_response, .Lfunc_end4-browser_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	browser_search,@function
browser_search:                         # @browser_search
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gimp_browser_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_show_message
	movabsq	$.L.str.28, %rdi
	leaq	-84(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	movq	-56(%rbp), %rcx
	movb	$0, %al
	callq	gimp_run_procedure
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -88(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movl	$0, -88(%rbp)
.LBB5_3:                                # %if.end
	cmpq	$0, -56(%rbp)
	je	.LBB5_5
# BB#4:                                 # %lor.lhs.false
	movq	-56(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB5_6
.LBB5_5:                                # %if.then.9
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movslq	-88(%rbp), %rdx
	callq	ngettext
	movl	-88(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
	jmp	.LBB5_10
.LBB5_6:                                # %if.else.12
	movl	-88(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB5_8
	jmp	.LBB5_7
.LBB5_7:                                # %sw.bb
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -96(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %sw.default
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movslq	-88(%rbp), %rdx
	callq	ngettext
	movl	-88(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
.LBB5_9:                                # %sw.epilog
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.18
	movq	-48(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gtk_list_store_clear
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gtk_tree_store_clear
	cmpl	$0, -88(%rbp)
	jle	.LBB5_27
# BB#11:                                # %if.then.29
	movq	-80(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-80(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-80(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-80(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-80(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-80(%rbp), %rax
	movq	488(%rax), %rax
	movq	%rax, -192(%rbp)
	movl	$0, -204(%rbp)
.LBB5_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-204(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB5_26
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB5_12 Depth=1
	movabsq	$.L.str.34, %rsi
	movslq	-204(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strstr
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	je	.LBB5_16
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	-224(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movslq	-204(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-384(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	addq	$-3, %rcx
	movq	-376(%rbp), %rax        # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB5_16
# BB#15:                                # %if.then.59
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	-224(%rbp), %rax
	movb	$0, (%rax)
.LBB5_16:                               # %if.end.60
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$47, %esi
	movslq	-204(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strrchr
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	je	.LBB5_18
# BB#17:                                # %if.then.65
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	-224(%rbp), %rax
	movb	$0, (%rax)
	movq	-224(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.67
                                        #   in Loop: Header=BB5_12 Depth=1
	movslq	-204(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -224(%rbp)
.LBB5_19:                               # %if.end.70
                                        #   in Loop: Header=BB5_12 Depth=1
	movslq	-204(%rbp), %rax
	movq	-200(%rbp), %rcx
	movslq	(%rcx,%rax,4), %rax
	movq	%rax, -304(%rbp)
	cmpq	$0, -304(%rbp)
	je	.LBB5_23
# BB#20:                                # %if.then.75
                                        #   in Loop: Header=BB5_12 Depth=1
	leaq	-304(%rbp), %rdi
	movabsq	$.L.str.35, %rax
	movq	%rax, -320(%rbp)
	callq	localtime
	movl	$50, %ecx
	movl	%ecx, %esi
	leaq	-288(%rbp), %rdi
	movq	%rax, -296(%rbp)
	movq	-320(%rbp), %rdx
	movq	-296(%rbp), %rcx
	callq	strftime
	movq	$-1, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	leaq	-288(%rbp), %rdi
	movl	%eax, %r8d
	movl	%r8d, -308(%rbp)
	movslq	-308(%rbp), %rax
	movb	$0, -288(%rbp,%rax)
	movq	%rcx, %rdx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movq	-392(%rbp), %r8         # 8-byte Reload
	callq	g_locale_to_utf8
	movq	%rax, -328(%rbp)
	cmpq	$0, %rax
	je	.LBB5_22
# BB#21:                                # %if.then.84
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$50, %eax
	movl	%eax, %edx
	leaq	-288(%rbp), %rdi
	movq	-328(%rbp), %rsi
	callq	strncpy
	movb	$0, -239(%rbp)
	movq	-328(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	g_free
.LBB5_22:                               # %if.end.88
                                        #   in Loop: Header=BB5_12 Depth=1
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.89
                                        #   in Loop: Header=BB5_12 Depth=1
	leaq	-288(%rbp), %rdi
	movl	$.L.str.8, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB5_24:                               # %if.end.92
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$1, %eax
	movl	%eax, %edi
	movl	$48, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	movq	%rax, -216(%rbp)
	movslq	-204(%rbp), %rax
	movq	-160(%rbp), %rsi
	movq	(%rsi,%rax,8), %rdi
	callq	g_strdup
	movq	-216(%rbp), %rsi
	movq	%rax, (%rsi)
	movslq	-204(%rbp), %rax
	movq	-168(%rbp), %rsi
	movq	(%rsi,%rax,8), %rdi
	callq	g_strdup
	movq	-216(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movslq	-204(%rbp), %rax
	movq	-176(%rbp), %rsi
	movq	(%rsi,%rax,8), %rdi
	callq	g_strdup
	movq	-216(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movslq	-204(%rbp), %rax
	movq	-184(%rbp), %rsi
	movq	(%rsi,%rax,8), %rdi
	callq	g_strdup
	movq	-216(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movslq	-204(%rbp), %rax
	movq	-200(%rbp), %rsi
	movl	(%rsi,%rax,4), %ecx
	movq	-216(%rbp), %rax
	movl	%ecx, 40(%rax)
	movslq	-204(%rbp), %rax
	movq	-192(%rbp), %rsi
	movq	(%rsi,%rax,8), %rdi
	callq	g_strdup
	leaq	-152(%rbp), %rsi
	movq	-216(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-104(%rbp), %rdi
	callq	gtk_list_store_append
	leaq	-152(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %ecx
	movl	$3, %r9d
	movl	$4, %r10d
	movl	$5, %r11d
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	leaq	-288(%rbp), %rax
	movq	-104(%rbp), %rdi
	movq	-224(%rbp), %r14
	movq	-304(%rbp), %r15
	movslq	-204(%rbp), %r12
	movq	-160(%rbp), %r13
	movq	(%r13,%r12,8), %r12
	movslq	-204(%rbp), %r13
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movq	-184(%rbp), %rax
	movq	(%rax,%r13,8), %rax
	movq	-216(%rbp), %r13
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movq	%r14, %rcx
	movl	%r9d, -424(%rbp)        # 4-byte Spill
	movq	%r15, %r9
	movl	$2, (%rsp)
	movq	-416(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movl	$3, 16(%rsp)
	movq	%r12, 24(%rsp)
	movl	$4, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$5, 48(%rsp)
	movq	%r13, 56(%rsp)
	movl	$-1, 64(%rsp)
	movb	$0, %al
	movl	%r10d, -428(%rbp)       # 4-byte Spill
	movl	%ebx, -432(%rbp)        # 4-byte Spill
	movl	%r11d, -436(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set
	leaq	-288(%rbp), %rcx
	movq	-72(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movq	-304(%rbp), %rdx
	movslq	-204(%rbp), %r9
	movq	-160(%rbp), %r14
	movq	(%r14,%r9,8), %r8
	movslq	-204(%rbp), %r9
	movq	-184(%rbp), %r14
	movq	(%r14,%r9,8), %r9
	movq	-216(%rbp), %r14
	movq	%r14, (%rsp)
	callq	insert_into_tree_view
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB5_12
.LBB5_26:                               # %for.end
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_columns_autosize
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_columns_autosize
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_tree_sortable_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_tree_sortable_set_sort_column_id
	movq	-112(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_tree_sortable_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_tree_sortable_set_sort_column_id
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first
	leaq	-152(%rbp), %rsi
	movq	-120(%rbp), %rdi
	movl	%eax, -492(%rbp)        # 4-byte Spill
	callq	gtk_tree_selection_select_iter
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.138
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_browser_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_show_message
.LBB5_28:                               # %if.end.143
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gimp_destroy_params
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	browser_search, .Lfunc_end5-browser_search
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	browser_list_selection_changed,@function
browser_list_selection_changed:         # @browser_list_selection_changed
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -72(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.browser_list_selection_changed, %rsi
	movabsq	$.L.str.37, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_14
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	leaq	-64(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB6_7
# BB#6:                                 # %if.then.1
	leaq	-56(%rbp), %rsi
	movl	$5, %edx
	leaq	-24(%rbp), %rcx
	movl	$3, %r8d
	leaq	-72(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
.LBB6_7:                                # %if.end.2
	cmpq	$0, -24(%rbp)
	je	.LBB6_9
# BB#8:                                 # %lor.lhs.false
	cmpq	$0, -72(%rbp)
	jne	.LBB6_10
.LBB6_9:                                # %if.then.5
	jmp	.LBB6_14
.LBB6_10:                               # %if.end.6
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_tree_view_get_model
	leaq	-56(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	find_existing_mpath
	cmpl	$0, %eax
	je	.LBB6_12
# BB#11:                                # %if.then.10
	leaq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_tree_view_expand_to_path
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_tree_view_get_selection
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$browser_tree_selection_changed, %rdi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %r9
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	leaq	-56(%rbp), %rsi
	movq	-80(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gtk_tree_selection_select_iter
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$browser_tree_selection_changed, %rdi
	movq	-80(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %ecx
	movss	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-88(%rbp), %rsi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gtk_tree_view_scroll_to_cell
	jmp	.LBB6_13
.LBB6_12:                               # %if.else.18
	movabsq	$.L.str.38, %rdi
	movb	$0, %al
	callq	g_warning
.LBB6_13:                               # %if.end.19
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	browser_show_plugin
.LBB6_14:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	browser_list_selection_changed, .Lfunc_end6-browser_list_selection_changed
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	browser_tree_selection_changed,@function
browser_tree_selection_changed:         # @browser_tree_selection_changed
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -72(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.browser_tree_selection_changed, %rsi
	movabsq	$.L.str.37, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_20
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	leaq	-64(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB7_7
# BB#6:                                 # %if.then.1
	leaq	-56(%rbp), %rsi
	movl	$5, %edx
	leaq	-24(%rbp), %rcx
	movl	$4, %r8d
	leaq	-72(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
.LBB7_7:                                # %if.end.2
	cmpq	$0, -24(%rbp)
	je	.LBB7_9
# BB#8:                                 # %lor.lhs.false
	cmpq	$0, -72(%rbp)
	jne	.LBB7_10
.LBB7_9:                                # %if.then.5
	jmp	.LBB7_20
.LBB7_10:                               # %if.end.6
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_tree_view_get_model
	leaq	-56(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -76(%rbp)
	movl	$0, -80(%rbp)
.LBB7_11:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB7_16
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB7_11 Depth=1
	leaq	-56(%rbp), %rsi
	movl	$3, %edx
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -88(%rbp)
	je	.LBB7_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	-72(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_15
# BB#14:                                # %if.then.13
	movl	$1, -80(%rbp)
	jmp	.LBB7_16
.LBB7_15:                               # %if.end.14
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	-88(%rbp), %rdi
	callq	g_free
	leaq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -76(%rbp)
	jmp	.LBB7_11
.LBB7_16:                               # %while.end
	movq	-72(%rbp), %rdi
	callq	g_free
	cmpl	$0, -80(%rbp)
	je	.LBB7_18
# BB#17:                                # %if.then.17
	leaq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_tree_view_get_selection
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$browser_list_selection_changed, %rdi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %r9
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	leaq	-56(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gtk_tree_selection_select_iter
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$browser_list_selection_changed, %rdi
	movq	-96(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %ecx
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-104(%rbp), %rsi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gtk_tree_view_scroll_to_cell
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.24
	movabsq	$.L.str.40, %rdi
	movb	$0, %al
	callq	g_warning
.LBB7_19:                               # %if.end.25
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	browser_show_plugin
.LBB7_20:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	browser_tree_selection_changed, .Lfunc_end7-browser_tree_selection_changed
	.cfi_endproc

	.align	16, 0x90
	.type	insert_into_tree_view,@function
insert_into_tree_view:                  # @insert_into_tree_view
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_strdup
	movl	$47, %esi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	strrchr
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-112(%rbp), %rdi
	callq	g_free
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	leaq	-144(%rbp), %rdx
	movq	-104(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	get_parent
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-176(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	callq	gtk_tree_store_append
	leaq	-176(%rbp), %rsi
	movl	$4, %edx
	xorl	%r8d, %r8d
	movl	$3, %ecx
	movl	$1, %r9d
	movl	$2, %r10d
	movl	$5, %r11d
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	movq	-184(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %r14
	movq	-88(%rbp), %r15
	movq	-64(%rbp), %r12
	movq	-72(%rbp), %r13
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	%r9d, -216(%rbp)        # 4-byte Spill
	movq	%r14, %r9
	movl	$3, (%rsp)
	movq	%r15, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%r12, 24(%rsp)
	movl	$2, 32(%rsp)
	movq	%r13, 40(%rsp)
	movl	$5, 48(%rsp)
	movq	-208(%rbp), %r14        # 8-byte Reload
	movq	%r14, 56(%rsp)
	movl	$-1, 64(%rsp)
	movb	$0, %al
	movl	%r10d, -220(%rbp)       # 4-byte Spill
	movl	%r11d, -224(%rbp)       # 4-byte Spill
	movl	%ebx, -228(%rbp)        # 4-byte Spill
	callq	gtk_tree_store_set
.LBB8_3:                                # %return
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	insert_into_tree_view, .Lfunc_end8-insert_into_tree_view
	.cfi_endproc

	.align	16, 0x90
	.type	get_parent,@function
get_parent:                             # @get_parent
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_10
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_tree_view_get_model
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	find_existing_mpath
	cmpl	$0, %eax
	je	.LBB9_4
# BB#3:                                 # %if.then.7
	jmp	.LBB9_10
.LBB9_4:                                # %if.end.8
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movabsq	$.L.str.34, %rsi
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	strstr
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB9_7
# BB#5:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-120(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	addq	$-3, %rcx
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB9_7
# BB#6:                                 # %if.then.14
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
.LBB9_7:                                # %if.end.15
	movl	$47, %esi
	movq	-64(%rbp), %rdi
	callq	strrchr
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB9_9
# BB#8:                                 # %if.then.18
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_tree_store_append
	movl	$4, %edx
	xorl	%r8d, %r8d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %r9
	movl	$-1, (%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_store_set
	jmp	.LBB9_10
.LBB9_9:                                # %if.else
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	g_strdup
	leaq	-56(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	get_parent
	leaq	-56(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_tree_store_append
	movl	$4, %edx
	xorl	%r8d, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-88(%rbp), %r9
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_tree_store_set
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB9_10:                               # %if.end.21
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	get_parent, .Lfunc_end9-get_parent
	.cfi_endproc

	.align	16, 0x90
	.type	find_existing_mpath,@function
find_existing_mpath:                    # @find_existing_mpath
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	callq	gtk_tree_path_new_first
	leaq	-72(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_free
	movl	$0, -4(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	callq	find_existing_mpath_helper
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_free
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB10_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	find_existing_mpath, .Lfunc_end10-find_existing_mpath
	.cfi_endproc

	.align	16, 0x90
	.type	find_existing_mpath_helper,@function
find_existing_mpath_helper:             # @find_existing_mpath_helper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
.LBB11_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$4, %edx
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
	movq	-88(%rbp), %rdi
	callq	g_free
	movl	$1, -4(%rbp)
	jmp	.LBB11_10
.LBB11_3:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gtk_tree_model_iter_children
	cmpl	$0, %eax
	je	.LBB11_7
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	gtk_tree_path_down
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	find_existing_mpath_helper
	cmpl	$0, %eax
	je	.LBB11_6
# BB#5:                                 # %if.then.6
	movq	-88(%rbp), %rdi
	callq	g_free
	movl	$1, -4(%rbp)
	jmp	.LBB11_10
.LBB11_6:                               # %if.end.7
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	gtk_tree_path_up
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB11_7:                               # %if.end.9
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	gtk_tree_path_next
	movq	-88(%rbp), %rdi
	callq	g_free
# BB#8:                                 # %do.cond
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_tree_model_iter_next
	cmpl	$0, %eax
	jne	.LBB11_1
# BB#9:                                 # %do.end
	movl	$0, -4(%rbp)
.LBB11_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	find_existing_mpath_helper, .Lfunc_end11-find_existing_mpath_helper
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	browser_show_plugin,@function
browser_show_plugin:                    # @browser_show_plugin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.browser_show_plugin, %rsi
	movabsq	$.L.str.37, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_11
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	jmp	.LBB13_6
.LBB13_6:                               # %do.body.1
	cmpq	$0, -56(%rbp)
	je	.LBB13_8
# BB#7:                                 # %if.then.3
	jmp	.LBB13_9
.LBB13_8:                               # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.browser_show_plugin, %rsi
	movabsq	$.L.str.39, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_11
.LBB13_9:                               # %if.end.5
	jmp	.LBB13_10
.LBB13_10:                              # %do.end.6
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	leaq	-100(%rbp), %rax
	leaq	-104(%rbp), %rdi
	leaq	-108(%rbp), %r10
	leaq	-120(%rbp), %r11
	leaq	-128(%rbp), %rbx
	movq	-56(%rbp), %r14
	movq	32(%r14), %r14
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rbx, 32(%rsp)
	callq	gimp_procedural_db_proc_info
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_browser_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %r9
	movq	-96(%rbp), %r10
	movl	-100(%rbp), %r15d
	movl	-104(%rbp), %r12d
	movl	-108(%rbp), %r13d
	movq	-120(%rbp), %r11
	movq	-128(%rbp), %rbx
	movq	%r10, (%rsp)
	movl	%r15d, 8(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r13d, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_proc_view_new
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_set_widget
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	movl	-104(%rbp), %esi
	callq	gimp_destroy_paramdefs
	movq	-128(%rbp), %rdi
	movl	-108(%rbp), %esi
	callq	gimp_destroy_paramdefs
.LBB13_11:                              # %return
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	browser_show_plugin, .Lfunc_end13-browser_show_plugin
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
	.asciz	"plug-in-plug-in-details"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Display information about plug-ins"
	.size	.L.str.3, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Allows to browse the plug-in menus system. You can search for plug-in names, sort by name or menu location and you can view a tree representation of the plug-in menus. Can also be of help to find where new plug-ins have installed themselves in the menus."
	.size	.L.str.4, 255

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Andy Thomas"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1999"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"_Plug-In Browser"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"<Image>/Help/Programming"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-plugin"
	.size	.L.str.10, 12

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
	.asciz	"plugin-browser"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Plug-In Browser"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-plugin-browser"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gtk-close"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"response"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"search"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Name"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"text"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Menu Path"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Image Types"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Installation Date"
	.size	.L.str.23, 18

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"changed"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"List View"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Tree View"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Searching by name"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-plugins-query"
	.size	.L.str.28, 19

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%d plug-in"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%d plug-ins"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"No matches for your query"
	.size	.L.str.31, 26

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%d plug-in matches your query"
	.size	.L.str.32, 30

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%d plug-ins match your query"
	.size	.L.str.33, 29

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"..."
	.size	.L.str.34, 4

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%c"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"No matches"
	.size	.L.str.36, 11

	.type	.L__func__.browser_list_selection_changed,@object # @__func__.browser_list_selection_changed
.L__func__.browser_list_selection_changed:
	.asciz	"browser_list_selection_changed"
	.size	.L__func__.browser_list_selection_changed, 31

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"browser != NULL"
	.size	.L.str.37, 16

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Failed to find node in tree"
	.size	.L.str.38, 28

	.type	.L__func__.browser_show_plugin,@object # @__func__.browser_show_plugin
.L__func__.browser_show_plugin:
	.asciz	"browser_show_plugin"
	.size	.L__func__.browser_show_plugin, 20

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"pinfo != NULL"
	.size	.L.str.39, 14

	.type	.L__func__.browser_tree_selection_changed,@object # @__func__.browser_tree_selection_changed
.L__func__.browser_tree_selection_changed:
	.asciz	"browser_tree_selection_changed"
	.size	.L__func__.browser_tree_selection_changed, 31

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Failed to find node in list"
	.size	.L.str.40, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
