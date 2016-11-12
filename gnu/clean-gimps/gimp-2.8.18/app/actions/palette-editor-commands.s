	.text
	.file	"palette-editor-commands.bc"
	.globl	palette_editor_edit_color_cmd_callback
	.align	16, 0x90
	.type	palette_editor_edit_color_cmd_callback,@function
palette_editor_edit_color_cmd_callback: # @palette_editor_edit_color_cmd_callback
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
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 168(%rax)
	je	.LBB0_2
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 240(%rax)
	jne	.LBB0_3
.LBB0_2:                                # %if.then
	jmp	.LBB0_7
.LBB0_3:                                # %if.end
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 232(%rax)
	jne	.LBB0_5
# BB#4:                                 # %if.then.9
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rdi
	movq	-40(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.2, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.1, %rcx
	movabsq	$.L.str.3, %rsi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	movq	240(%rdi), %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	-104(%rbp), %r10        # 8-byte Reload
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movq	%r10, %rdx
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 32(%rsp)
	callq	gimp_color_dialog_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gtk_widget_destroyed, %rcx
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	%rax, 232(%rdx)
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$232, %rdx
	movq	%rax, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.5, %rsi
	movabsq	$palette_editor_edit_color_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	232(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB0_6
.LBB0_5:                                # %if.else
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_viewable_dialog_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	144(%rsi), %rdx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_dialog_set_viewable
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_color_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	movq	240(%rdx), %rsi
	movq	%rax, %rdi
	callq	gimp_color_dialog_set_color
.LBB0_6:                                # %if.end.37
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB0_7:                                # %return
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	palette_editor_edit_color_cmd_callback, .Lfunc_end0-palette_editor_edit_color_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	palette_editor_edit_color_update,@function
palette_editor_edit_color_update:       # @palette_editor_edit_color_update
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
	subq	$80, %rsp
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
	callq	gimp_palette_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	je	.LBB1_2
	jmp	.LBB1_7
.LBB1_7:                                # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_8
.LBB1_8:                                # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB1_6
	jmp	.LBB1_1
.LBB1_1:                                # %sw.bb
	jmp	.LBB1_6
.LBB1_2:                                # %sw.bb.4
	movq	-32(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB1_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	240(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %sw.bb.10
	movq	-32(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_hide
.LBB1_6:                                # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	palette_editor_edit_color_update, .Lfunc_end1-palette_editor_edit_color_update
	.cfi_endproc

	.globl	palette_editor_new_color_cmd_callback
	.align	16, 0x90
	.type	palette_editor_new_color_cmd_callback,@function
palette_editor_new_color_cmd_callback:  # @palette_editor_new_color_cmd_callback
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 168(%rax)
	je	.LBB2_5
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then.8
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_context_get_background
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_context_get_foreground
.LBB2_4:                                # %if.end
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rdi
	callq	gimp_palette_add_entry
	movq	-32(%rbp), %rcx
	movq	%rax, 240(%rcx)
.LBB2_5:                                # %if.end.12
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	palette_editor_new_color_cmd_callback, .Lfunc_end2-palette_editor_new_color_cmd_callback
	.cfi_endproc

	.globl	palette_editor_delete_color_cmd_callback
	.align	16, 0x90
	.type	palette_editor_delete_color_cmd_callback,@function
palette_editor_delete_color_cmd_callback: # @palette_editor_delete_color_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_palette_editor_get_type
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
	cmpl	$0, 168(%rax)
	je	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB3_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	240(%rax), %rsi
	callq	gimp_palette_delete_entry
.LBB3_3:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	palette_editor_delete_color_cmd_callback, .Lfunc_end3-palette_editor_delete_color_cmd_callback
	.cfi_endproc

	.globl	palette_editor_zoom_cmd_callback
	.align	16, 0x90
	.type	palette_editor_zoom_cmd_callback,@function
palette_editor_zoom_cmd_callback:       # @palette_editor_zoom_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_palette_editor_zoom
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	palette_editor_zoom_cmd_callback, .Lfunc_end4-palette_editor_zoom_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Edit Palette Color"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gtk-select-color"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Edit Color Palette Entry"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-palette-editor-color-dialog"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"destroy"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"update"
	.size	.L.str.5, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
