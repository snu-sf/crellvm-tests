	.text
	.file	"dialogs-constructors.bc"
	.globl	dialogs_image_new_new
	.align	16, 0x90
	.type	dialogs_image_new_new,@function
dialogs_image_new_new:                  # @dialogs_image_new_new
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	image_new_dialog_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dialogs_image_new_new, .Lfunc_end0-dialogs_image_new_new
	.cfi_endproc

	.globl	dialogs_file_open_new
	.align	16, 0x90
	.type	dialogs_file_open_new,@function
dialogs_file_open_new:                  # @dialogs_file_open_new
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	callq	file_open_dialog_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dialogs_file_open_new, .Lfunc_end1-dialogs_file_open_new
	.cfi_endproc

	.globl	dialogs_file_open_location_new
	.align	16, 0x90
	.type	dialogs_file_open_location_new,@function
dialogs_file_open_location_new:         # @dialogs_file_open_location_new
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	callq	file_open_location_dialog_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dialogs_file_open_location_new, .Lfunc_end2-dialogs_file_open_location_new
	.cfi_endproc

	.globl	dialogs_file_save_new
	.align	16, 0x90
	.type	dialogs_file_save_new,@function
dialogs_file_save_new:                  # @dialogs_file_save_new
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	movl	%eax, %esi
	callq	file_save_dialog_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dialogs_file_save_new, .Lfunc_end3-dialogs_file_save_new
	.cfi_endproc

	.globl	dialogs_file_export_new
	.align	16, 0x90
	.type	dialogs_file_export_new,@function
dialogs_file_export_new:                # @dialogs_file_export_new
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
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	movl	%eax, %esi
	callq	file_save_dialog_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dialogs_file_export_new, .Lfunc_end4-dialogs_file_export_new
	.cfi_endproc

	.globl	dialogs_preferences_get
	.align	16, 0x90
	.type	dialogs_preferences_get,@function
dialogs_preferences_get:                # @dialogs_preferences_get
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	callq	preferences_dialog_create
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	dialogs_preferences_get, .Lfunc_end5-dialogs_preferences_get
	.cfi_endproc

	.globl	dialogs_keyboard_shortcuts_get
	.align	16, 0x90
	.type	dialogs_keyboard_shortcuts_get,@function
dialogs_keyboard_shortcuts_get:         # @dialogs_keyboard_shortcuts_get
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	callq	keyboard_shortcuts_dialog_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	dialogs_keyboard_shortcuts_get, .Lfunc_end6-dialogs_keyboard_shortcuts_get
	.cfi_endproc

	.globl	dialogs_input_devices_get
	.align	16, 0x90
	.type	dialogs_input_devices_get,@function
dialogs_input_devices_get:              # @dialogs_input_devices_get
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	callq	input_devices_dialog_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dialogs_input_devices_get, .Lfunc_end7-dialogs_input_devices_get
	.cfi_endproc

	.globl	dialogs_module_get
	.align	16, 0x90
	.type	dialogs_module_get,@function
dialogs_module_get:                     # @dialogs_module_get
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	callq	module_dialog_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	dialogs_module_get, .Lfunc_end8-dialogs_module_get
	.cfi_endproc

	.globl	dialogs_palette_import_get
	.align	16, 0x90
	.type	dialogs_palette_import_get,@function
dialogs_palette_import_get:             # @dialogs_palette_import_get
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	palette_import_dialog_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	dialogs_palette_import_get, .Lfunc_end9-dialogs_palette_import_get
	.cfi_endproc

	.globl	dialogs_tips_get
	.align	16, 0x90
	.type	dialogs_tips_get,@function
dialogs_tips_get:                       # @dialogs_tips_get
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	callq	tips_dialog_create
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	dialogs_tips_get, .Lfunc_end10-dialogs_tips_get
	.cfi_endproc

	.globl	dialogs_about_get
	.align	16, 0x90
	.type	dialogs_about_get,@function
dialogs_about_get:                      # @dialogs_about_get
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	about_dialog_create
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dialogs_about_get, .Lfunc_end11-dialogs_about_get
	.cfi_endproc

	.globl	dialogs_error_get
	.align	16, 0x90
	.type	dialogs_error_get,@function
dialogs_error_get:                      # @dialogs_error_get
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
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_error_dialog_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	dialogs_error_get, .Lfunc_end12-dialogs_error_get
	.cfi_endproc

	.globl	dialogs_close_all_get
	.align	16, 0x90
	.type	dialogs_close_all_get,@function
dialogs_close_all_get:                  # @dialogs_close_all_get
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
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	callq	close_all_dialog_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dialogs_close_all_get, .Lfunc_end13-dialogs_close_all_get
	.cfi_endproc

	.globl	dialogs_quit_get
	.align	16, 0x90
	.type	dialogs_quit_get,@function
dialogs_quit_get:                       # @dialogs_quit_get
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	callq	quit_dialog_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	dialogs_quit_get, .Lfunc_end14-dialogs_quit_get
	.cfi_endproc

	.globl	dialogs_toolbox_new
	.align	16, 0x90
	.type	dialogs_toolbox_new,@function
dialogs_toolbox_new:                    # @dialogs_toolbox_new
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_toolbox_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	dialogs_toolbox_new, .Lfunc_end15-dialogs_toolbox_new
	.cfi_endproc

	.globl	dialogs_toolbox_dock_window_new
	.align	16, 0x90
	.type	dialogs_toolbox_dock_window_new,@function
dialogs_toolbox_dock_window_new:        # @dialogs_toolbox_dock_window_new
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
	subq	$48, %rsp
	movabsq	$.L.str.1, %rax
	movabsq	$.L.str.2, %r8
	movl	$1, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%r8, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r9d, %edx
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	gimp_dock_window_new
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	dialogs_toolbox_dock_window_new, .Lfunc_end16-dialogs_toolbox_dock_window_new
	.cfi_endproc

	.globl	dialogs_dock_new
	.align	16, 0x90
	.type	dialogs_dock_new,@function
dialogs_dock_new:                       # @dialogs_dock_new
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	gimp_menu_dock_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	dialogs_dock_new, .Lfunc_end17-dialogs_dock_new
	.cfi_endproc

	.globl	dialogs_dock_window_new
	.align	16, 0x90
	.type	dialogs_dock_window_new,@function
dialogs_dock_window_new:                # @dialogs_dock_window_new
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
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %r8
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%r8, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r9d, %edx
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	gimp_dock_window_new
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	dialogs_dock_window_new, .Lfunc_end18-dialogs_dock_window_new
	.cfi_endproc

	.globl	dialogs_tool_options_new
	.align	16, 0x90
	.type	dialogs_tool_options_new,@function
dialogs_tool_options_new:               # @dialogs_tool_options_new
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tool_options_editor_new
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	dialogs_tool_options_new, .Lfunc_end19-dialogs_tool_options_new
	.cfi_endproc

	.globl	dialogs_device_status_new
	.align	16, 0x90
	.type	dialogs_device_status_new,@function
dialogs_device_status_new:              # @dialogs_device_status_new
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	callq	gimp_device_status_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	dialogs_device_status_new, .Lfunc_end20-dialogs_device_status_new
	.cfi_endproc

	.globl	dialogs_error_console_new
	.align	16, 0x90
	.type	dialogs_error_console_new,@function
dialogs_error_console_new:              # @dialogs_error_console_new
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
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_error_console_new
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	dialogs_error_console_new, .Lfunc_end21-dialogs_error_console_new
	.cfi_endproc

	.globl	dialogs_cursor_view_new
	.align	16, 0x90
	.type	dialogs_cursor_view_new,@function
dialogs_cursor_view_new:                # @dialogs_cursor_view_new
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movq	%rax, %rdi
	callq	gimp_cursor_view_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	dialogs_cursor_view_new, .Lfunc_end22-dialogs_cursor_view_new
	.cfi_endproc

	.globl	dialogs_image_list_view_new
	.align	16, 0x90
	.type	dialogs_image_list_view_new,@function
dialogs_image_list_view_new:            # @dialogs_image_list_view_new
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
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	384(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	xorl	%edi, %edi
	movl	$1, %r8d
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_image_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	dialogs_image_list_view_new, .Lfunc_end23-dialogs_image_list_view_new
	.cfi_endproc

	.globl	dialogs_brush_list_view_new
	.align	16, 0x90
	.type	dialogs_brush_list_view_new,@function
dialogs_brush_list_view_new:            # @dialogs_brush_list_view_new
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
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	464(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %r8d
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	xorl	%edi, %edi
	movl	$1, %ecx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_brush_factory_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	dialogs_brush_list_view_new, .Lfunc_end24-dialogs_brush_list_view_new
	.cfi_endproc

	.globl	dialogs_dynamics_list_view_new
	.align	16, 0x90
	.type	dialogs_dynamics_list_view_new,@function
dialogs_dynamics_list_view_new:         # @dialogs_dynamics_list_view_new
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
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	472(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	xorl	%edi, %edi
	movl	$1, %r8d
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_dynamics_factory_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	dialogs_dynamics_list_view_new, .Lfunc_end25-dialogs_dynamics_list_view_new
	.cfi_endproc

	.globl	dialogs_pattern_list_view_new
	.align	16, 0x90
	.type	dialogs_pattern_list_view_new,@function
dialogs_pattern_list_view_new:          # @dialogs_pattern_list_view_new
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	480(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	xorl	%edi, %edi
	movl	$1, %r8d
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_pattern_factory_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	dialogs_pattern_list_view_new, .Lfunc_end26-dialogs_pattern_list_view_new
	.cfi_endproc

	.globl	dialogs_gradient_list_view_new
	.align	16, 0x90
	.type	dialogs_gradient_list_view_new,@function
dialogs_gradient_list_view_new:         # @dialogs_gradient_list_view_new
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
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp84:
	.cfi_offset %rbx, -32
.Ltmp85:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	488(%rdx), %rsi
	movq	-32(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-24(%rbp), %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	xorl	%edi, %edi
	movl	$1, %r8d
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %r9
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r14, 16(%rsp)
	callq	gimp_data_factory_view_new
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end27:
	.size	dialogs_gradient_list_view_new, .Lfunc_end27-dialogs_gradient_list_view_new
	.cfi_endproc

	.globl	dialogs_palette_list_view_new
	.align	16, 0x90
	.type	dialogs_palette_list_view_new,@function
dialogs_palette_list_view_new:          # @dialogs_palette_list_view_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp89:
	.cfi_offset %rbx, -32
.Ltmp90:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	496(%rdx), %rsi
	movq	-32(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-24(%rbp), %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	xorl	%edi, %edi
	movl	$1, %r8d
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %r9
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r14, 16(%rsp)
	callq	gimp_data_factory_view_new
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end28:
	.size	dialogs_palette_list_view_new, .Lfunc_end28-dialogs_palette_list_view_new
	.cfi_endproc

	.globl	dialogs_font_list_view_new
	.align	16, 0x90
	.type	dialogs_font_list_view_new,@function
dialogs_font_list_view_new:             # @dialogs_font_list_view_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	456(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	xorl	%edi, %edi
	movl	$1, %r8d
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_font_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	dialogs_font_list_view_new, .Lfunc_end29-dialogs_font_list_view_new
	.cfi_endproc

	.globl	dialogs_buffer_list_view_new
	.align	16, 0x90
	.type	dialogs_buffer_list_view_new,@function
dialogs_buffer_list_view_new:           # @dialogs_buffer_list_view_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	448(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	xorl	%edi, %edi
	movl	$1, %r8d
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_buffer_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	dialogs_buffer_list_view_new, .Lfunc_end30-dialogs_buffer_list_view_new
	.cfi_endproc

	.globl	dialogs_tool_preset_list_view_new
	.align	16, 0x90
	.type	dialogs_tool_preset_list_view_new,@function
dialogs_tool_preset_list_view_new:      # @dialogs_tool_preset_list_view_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	504(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	xorl	%edi, %edi
	movl	$1, %r8d
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_tool_preset_factory_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	dialogs_tool_preset_list_view_new, .Lfunc_end31-dialogs_tool_preset_list_view_new
	.cfi_endproc

	.globl	dialogs_document_list_view_new
	.align	16, 0x90
	.type	dialogs_document_list_view_new,@function
dialogs_document_list_view_new:         # @dialogs_document_list_view_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	544(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_document_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	dialogs_document_list_view_new, .Lfunc_end32-dialogs_document_list_view_new
	.cfi_endproc

	.globl	dialogs_template_list_view_new
	.align	16, 0x90
	.type	dialogs_template_list_view_new,@function
dialogs_template_list_view_new:         # @dialogs_template_list_view_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	552(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_template_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	dialogs_template_list_view_new, .Lfunc_end33-dialogs_template_list_view_new
	.cfi_endproc

	.globl	dialogs_image_grid_view_new
	.align	16, 0x90
	.type	dialogs_image_grid_view_new,@function
dialogs_image_grid_view_new:            # @dialogs_image_grid_view_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	384(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_image_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	dialogs_image_grid_view_new, .Lfunc_end34-dialogs_image_grid_view_new
	.cfi_endproc

	.globl	dialogs_brush_grid_view_new
	.align	16, 0x90
	.type	dialogs_brush_grid_view_new,@function
dialogs_brush_grid_view_new:            # @dialogs_brush_grid_view_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	464(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %r8d
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_brush_factory_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	dialogs_brush_grid_view_new, .Lfunc_end35-dialogs_brush_grid_view_new
	.cfi_endproc

	.globl	dialogs_pattern_grid_view_new
	.align	16, 0x90
	.type	dialogs_pattern_grid_view_new,@function
dialogs_pattern_grid_view_new:          # @dialogs_pattern_grid_view_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	480(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_pattern_factory_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	dialogs_pattern_grid_view_new, .Lfunc_end36-dialogs_pattern_grid_view_new
	.cfi_endproc

	.globl	dialogs_gradient_grid_view_new
	.align	16, 0x90
	.type	dialogs_gradient_grid_view_new,@function
dialogs_gradient_grid_view_new:         # @dialogs_gradient_grid_view_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
.Ltmp118:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	488(%rdx), %rsi
	movq	-24(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	movl	$1, %ecx
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdx
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%r10d, %ecx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 16(%rsp)
	callq	gimp_data_factory_view_new
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end37:
	.size	dialogs_gradient_grid_view_new, .Lfunc_end37-dialogs_gradient_grid_view_new
	.cfi_endproc

	.globl	dialogs_palette_grid_view_new
	.align	16, 0x90
	.type	dialogs_palette_grid_view_new,@function
dialogs_palette_grid_view_new:          # @dialogs_palette_grid_view_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
.Ltmp122:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	496(%rdx), %rsi
	movq	-24(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	movl	$1, %ecx
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdx
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%r10d, %ecx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 16(%rsp)
	callq	gimp_data_factory_view_new
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end38:
	.size	dialogs_palette_grid_view_new, .Lfunc_end38-dialogs_palette_grid_view_new
	.cfi_endproc

	.globl	dialogs_font_grid_view_new
	.align	16, 0x90
	.type	dialogs_font_grid_view_new,@function
dialogs_font_grid_view_new:             # @dialogs_font_grid_view_new
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	456(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_font_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	dialogs_font_grid_view_new, .Lfunc_end39-dialogs_font_grid_view_new
	.cfi_endproc

	.globl	dialogs_buffer_grid_view_new
	.align	16, 0x90
	.type	dialogs_buffer_grid_view_new,@function
dialogs_buffer_grid_view_new:           # @dialogs_buffer_grid_view_new
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	448(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_buffer_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	dialogs_buffer_grid_view_new, .Lfunc_end40-dialogs_buffer_grid_view_new
	.cfi_endproc

	.globl	dialogs_document_grid_view_new
	.align	16, 0x90
	.type	dialogs_document_grid_view_new,@function
dialogs_document_grid_view_new:         # @dialogs_document_grid_view_new
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	544(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	movl	$1, %edi
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_document_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	dialogs_document_grid_view_new, .Lfunc_end41-dialogs_document_grid_view_new
	.cfi_endproc

	.globl	dialogs_template_grid_view_new
	.align	16, 0x90
	.type	dialogs_template_grid_view_new,@function
dialogs_template_grid_view_new:         # @dialogs_template_grid_view_new
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	552(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	movl	$1, %edi
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_template_view_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	dialogs_template_grid_view_new, .Lfunc_end42-dialogs_template_grid_view_new
	.cfi_endproc

	.globl	dialogs_layer_list_view_new
	.align	16, 0x90
	.type	dialogs_layer_list_view_new,@function
dialogs_layer_list_view_new:            # @dialogs_layer_list_view_new
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpl	$1, -28(%rbp)
	jge	.LBB43_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movl	348(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB43_2:                               # %if.end
	callq	gimp_layer_tree_view_get_type
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%esi, -44(%rbp)         # 4-byte Spill
	callq	gimp_context_get_image
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	movl	$2, %edx
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.12, %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_item_tree_view_new
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	dialogs_layer_list_view_new, .Lfunc_end43-dialogs_layer_list_view_new
	.cfi_endproc

	.globl	dialogs_channel_list_view_new
	.align	16, 0x90
	.type	dialogs_channel_list_view_new,@function
dialogs_channel_list_view_new:          # @dialogs_channel_list_view_new
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpl	$1, -28(%rbp)
	jge	.LBB44_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movl	348(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB44_2:                               # %if.end
	callq	gimp_channel_tree_view_get_type
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%esi, -44(%rbp)         # 4-byte Spill
	callq	gimp_context_get_image
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	movl	$1, %edx
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.14, %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_item_tree_view_new
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	dialogs_channel_list_view_new, .Lfunc_end44-dialogs_channel_list_view_new
	.cfi_endproc

	.globl	dialogs_vectors_list_view_new
	.align	16, 0x90
	.type	dialogs_vectors_list_view_new,@function
dialogs_vectors_list_view_new:          # @dialogs_vectors_list_view_new
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpl	$1, -28(%rbp)
	jge	.LBB45_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movl	348(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB45_2:                               # %if.end
	callq	gimp_vectors_tree_view_get_type
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%esi, -44(%rbp)         # 4-byte Spill
	callq	gimp_context_get_image
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_menu_factory
	movl	$1, %edx
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_item_tree_view_new
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	dialogs_vectors_list_view_new, .Lfunc_end45-dialogs_vectors_list_view_new
	.cfi_endproc

	.globl	dialogs_colormap_editor_new
	.align	16, 0x90
	.type	dialogs_colormap_editor_new,@function
dialogs_colormap_editor_new:            # @dialogs_colormap_editor_new
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movq	%rax, %rdi
	callq	gimp_colormap_editor_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	dialogs_colormap_editor_new, .Lfunc_end46-dialogs_colormap_editor_new
	.cfi_endproc

	.globl	dialogs_histogram_editor_new
	.align	16, 0x90
	.type	dialogs_histogram_editor_new,@function
dialogs_histogram_editor_new:           # @dialogs_histogram_editor_new
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	gimp_histogram_editor_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	dialogs_histogram_editor_new, .Lfunc_end47-dialogs_histogram_editor_new
	.cfi_endproc

	.globl	dialogs_selection_editor_new
	.align	16, 0x90
	.type	dialogs_selection_editor_new,@function
dialogs_selection_editor_new:           # @dialogs_selection_editor_new
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movq	%rax, %rdi
	callq	gimp_selection_editor_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	dialogs_selection_editor_new, .Lfunc_end48-dialogs_selection_editor_new
	.cfi_endproc

	.globl	dialogs_undo_editor_new
	.align	16, 0x90
	.type	dialogs_undo_editor_new,@function
dialogs_undo_editor_new:                # @dialogs_undo_editor_new
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	32(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_undo_editor_new
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	dialogs_undo_editor_new, .Lfunc_end49-dialogs_undo_editor_new
	.cfi_endproc

	.globl	dialogs_sample_point_editor_new
	.align	16, 0x90
	.type	dialogs_sample_point_editor_new,@function
dialogs_sample_point_editor_new:        # @dialogs_sample_point_editor_new
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movq	%rax, %rdi
	callq	gimp_sample_point_editor_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	dialogs_sample_point_editor_new, .Lfunc_end50-dialogs_sample_point_editor_new
	.cfi_endproc

	.globl	dialogs_navigation_editor_new
	.align	16, 0x90
	.type	dialogs_navigation_editor_new,@function
dialogs_navigation_editor_new:          # @dialogs_navigation_editor_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movq	%rax, %rdi
	callq	gimp_navigation_editor_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	dialogs_navigation_editor_new, .Lfunc_end51-dialogs_navigation_editor_new
	.cfi_endproc

	.globl	dialogs_color_editor_new
	.align	16, 0x90
	.type	dialogs_color_editor_new,@function
dialogs_color_editor_new:               # @dialogs_color_editor_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_color_editor_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	dialogs_color_editor_new, .Lfunc_end52-dialogs_color_editor_new
	.cfi_endproc

	.globl	dialogs_brush_editor_get
	.align	16, 0x90
	.type	dialogs_brush_editor_get,@function
dialogs_brush_editor_get:               # @dialogs_brush_editor_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_brush_editor_new
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	dialogs_brush_editor_get, .Lfunc_end53-dialogs_brush_editor_get
	.cfi_endproc

	.globl	dialogs_dynamics_editor_get
	.align	16, 0x90
	.type	dialogs_dynamics_editor_get,@function
dialogs_dynamics_editor_get:            # @dialogs_dynamics_editor_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dynamics_editor_new
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	dialogs_dynamics_editor_get, .Lfunc_end54-dialogs_dynamics_editor_get
	.cfi_endproc

	.globl	dialogs_gradient_editor_get
	.align	16, 0x90
	.type	dialogs_gradient_editor_get,@function
dialogs_gradient_editor_get:            # @dialogs_gradient_editor_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_gradient_editor_new
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	dialogs_gradient_editor_get, .Lfunc_end55-dialogs_gradient_editor_get
	.cfi_endproc

	.globl	dialogs_palette_editor_get
	.align	16, 0x90
	.type	dialogs_palette_editor_get,@function
dialogs_palette_editor_get:             # @dialogs_palette_editor_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_palette_editor_new
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	dialogs_palette_editor_get, .Lfunc_end56-dialogs_palette_editor_get
	.cfi_endproc

	.globl	dialogs_tool_preset_editor_get
	.align	16, 0x90
	.type	dialogs_tool_preset_editor_get,@function
dialogs_tool_preset_editor_get:         # @dialogs_tool_preset_editor_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tool_preset_editor_new
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	dialogs_tool_preset_editor_get, .Lfunc_end57-dialogs_tool_preset_editor_get
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP Message"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-toolbox"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"<Toolbox>"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-dock"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"<Dock>"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<Gradients>"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/gradients-popup"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gradients"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"<Palettes>"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/palettes-popup"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"palettes"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"<Layers>"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/layers-popup"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Channels>"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/channels-popup"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"<Vectors>"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"/vectors-popup"
	.size	.L.str.16, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
