	.text
	.file	"gimptoolbox-indicator-area.bc"
	.globl	gimp_toolbox_indicator_area_create
	.align	16, 0x90
	.type	gimp_toolbox_indicator_area_create,@function
gimp_toolbox_indicator_area_create:     # @gimp_toolbox_indicator_area_create
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
	subq	$480, %rsp              # imm = 0x1E0
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_toolbox_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_toolbox_indicator_area_create, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_toolbox_get_context
	movl	$2, %ecx
	xorl	%edx, %edx
	movq	%rax, -24(%rbp)
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movl	$24, %ecx
	movl	$1, %r9d
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	movl	-120(%rbp), %r8d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	gimp_view_new_full_by_types
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_context_get_brush
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-156(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -160(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-160(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.2, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_view_set_viewable, %rax
	movl	$2, %r8d
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.4, %rsi
	movabsq	$brush_preview_clicked, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movabsq	$brush_preview_drop_brush, %rdx
	movq	-24(%rbp), %rcx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-24(%rbp), %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_pattern_get_type
	movl	$24, %r9d
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	%r11d, -236(%rbp)       # 4-byte Spill
	callq	gimp_view_new_full_by_types
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_context_get_pattern
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	-276(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.5, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_view_set_viewable, %rax
	movl	$2, %r8d
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.4, %rsi
	movabsq	$pattern_preview_clicked, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	gimp_pattern_get_type
	movabsq	$pattern_preview_drop_pattern, %rdx
	movq	-24(%rbp), %rcx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-24(%rbp), %rdi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movl	$52, %ecx
	movl	$12, %r8d
	movl	$1, %r9d
	xorl	%r10d, %r10d
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	-352(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	%r10d, -356(%rbp)       # 4-byte Spill
	callq	gimp_view_new_full_by_types
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_context_get_gradient
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$1, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	-396(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.7, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_view_set_viewable, %rax
	movl	$2, %r8d
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.4, %rsi
	movabsq	$gradient_preview_clicked, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movabsq	$gradient_preview_drop_gradient, %rdx
	movq	-24(%rbp), %rcx
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-32(%rbp), %rdi
	movl	%eax, -452(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB0_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_toolbox_indicator_area_create, .Lfunc_end0-gimp_toolbox_indicator_area_create
	.cfi_endproc

	.align	16, 0x90
	.type	brush_preview_clicked,@function
brush_preview_clicked:                  # @brush_preview_clicked
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_toolbox_get_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_get_dialog_factory
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movabsq	$.L.str.9, %r8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -80(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	brush_preview_clicked, .Lfunc_end1-brush_preview_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	brush_preview_drop_brush,@function
brush_preview_drop_brush:               # @brush_preview_drop_brush
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_brush
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	brush_preview_drop_brush, .Lfunc_end2-brush_preview_drop_brush
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_preview_clicked,@function
pattern_preview_clicked:                # @pattern_preview_clicked
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_toolbox_get_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_get_dialog_factory
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movabsq	$.L.str.10, %r8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -80(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pattern_preview_clicked, .Lfunc_end3-pattern_preview_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_preview_drop_pattern,@function
pattern_preview_drop_pattern:           # @pattern_preview_drop_pattern
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_pattern
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pattern_preview_drop_pattern, .Lfunc_end4-pattern_preview_drop_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_preview_clicked,@function
gradient_preview_clicked:               # @gradient_preview_clicked
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_toolbox_get_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_get_dialog_factory
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movabsq	$.L.str.11, %r8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -80(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gradient_preview_clicked, .Lfunc_end5-gradient_preview_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_preview_drop_gradient,@function
gradient_preview_drop_gradient:         # @gradient_preview_drop_gradient
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_gradient
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gradient_preview_drop_gradient, .Lfunc_end6-gradient_preview_drop_gradient
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_toolbox_indicator_area_create,@object # @__func__.gimp_toolbox_indicator_area_create
.L__func__.gimp_toolbox_indicator_area_create:
	.asciz	"gimp_toolbox_indicator_area_create"
	.size	.L__func__.gimp_toolbox_indicator_area_create, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_TOOLBOX (toolbox)"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"The active brush.\nClick to open the Brush Dialog."
	.size	.L.str.2, 50

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"brush-changed"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"clicked"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The active pattern.\nClick to open the Pattern Dialog."
	.size	.L.str.5, 54

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pattern-changed"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The active gradient.\nClick to open the Gradient Dialog."
	.size	.L.str.7, 56

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gradient-changed"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-brush-grid|gimp-brush-list"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-pattern-grid|gimp-pattern-list"
	.size	.L.str.10, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-gradient-list|gimp-gradient-grid"
	.size	.L.str.11, 38


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
