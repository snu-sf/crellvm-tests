	.text
	.file	"gimptoolbox-color-area.bc"
	.globl	gimp_toolbox_color_area_create
	.align	16, 0x90
	.type	gimp_toolbox_color_area_create,@function
gimp_toolbox_color_area_create:         # @gimp_toolbox_color_area_create
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_toolbox_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_toolbox_color_area_create, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_toolbox_get_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_fg_bg_editor_new
	movq	%rax, color_area
	movq	color_area, %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	gtk_widget_set_size_request
	movl	$12288, %esi            # imm = 0x3000
	movq	color_area, %rdi
	callq	gtk_widget_add_events
	movabsq	$.L.str.2, %rdi
	movq	color_area, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.3, %rsi
	movabsq	$color_area_color_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	color_area, %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	color_area, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB0_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_toolbox_color_area_create, .Lfunc_end0-gimp_toolbox_color_area_create
	.cfi_endproc

	.align	16, 0x90
	.type	color_area_color_clicked,@function
color_area_color_clicked:               # @color_area_color_clicked
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	cmpl	$0, color_dialog_active
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$revert_fg, %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_foreground
	movabsq	$revert_bg, %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_background
.LBB1_2:                                # %if.end
	cmpl	$0, -20(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then.1
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_foreground
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, -72(%rbp)
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_background
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movq	%rax, -72(%rbp)
.LBB1_5:                                # %if.end.3
	movl	-20(%rbp), %eax
	movl	%eax, edit_color
	cmpq	$0, color_dialog
	jne	.LBB1_7
# BB#6:                                 # %if.then.5
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.6, %rdi
	leaq	-64(%rbp), %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movl	%r8d, -128(%rbp)        # 4-byte Spill
	movq	%r10, %r8
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, 32(%rsp)
	callq	gimp_color_dialog_new
	movabsq	$.L.str.7, %rsi
	movabsq	$color_area_dialog_update, %rcx
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, color_dialog
	movq	color_dialog, %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB1_7:                                # %if.end.11
	movq	color_dialog, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
	movq	color_dialog, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_color_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_dialog_set_color
	movq	color_dialog, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	movl	$1, color_dialog_active
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	color_area_color_clicked, .Lfunc_end1-color_area_color_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	color_area_dialog_update,@function
color_area_dialog_update:               # @color_area_dialog_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-20(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -36(%rbp)         # 4-byte Spill
	je	.LBB2_1
	jmp	.LBB2_8
.LBB2_8:                                # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB2_6
	jmp	.LBB2_9
.LBB2_9:                                # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB2_2
	jmp	.LBB2_7
.LBB2_1:                                # %sw.bb
	movq	color_dialog, %rdi
	callq	gtk_widget_hide
	movl	$0, color_dialog_active
.LBB2_2:                                # %sw.bb.1
	cmpl	$0, edit_color
	jne	.LBB2_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_set_foreground
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_set_background
.LBB2_5:                                # %if.end
	jmp	.LBB2_7
.LBB2_6:                                # %sw.bb.2
	movq	color_dialog, %rdi
	callq	gtk_widget_hide
	movabsq	$revert_fg, %rsi
	movl	$0, color_dialog_active
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_foreground
	movabsq	$revert_bg, %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_set_background
.LBB2_7:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	color_area_dialog_update, .Lfunc_end2-color_area_dialog_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_toolbox_color_area_create,@object # @__func__.gimp_toolbox_color_area_create
.L__func__.gimp_toolbox_color_area_create:
	.asciz	"gimp_toolbox_color_area_create"
	.size	.L__func__.gimp_toolbox_color_area_create, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_TOOLBOX (toolbox)"
	.size	.L.str.1, 26

	.type	color_area,@object      # @color_area
	.local	color_area
	.comm	color_area,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Foreground & background colors.\nThe black and white squares reset colors.\nThe arrows swap colors.\nClick to open the color selection dialog."
	.size	.L.str.2, 140

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"color-clicked"
	.size	.L.str.3, 14

	.type	color_dialog_active,@object # @color_dialog_active
	.local	color_dialog_active
	.comm	color_dialog_active,4,4
	.type	revert_fg,@object       # @revert_fg
	.local	revert_fg
	.comm	revert_fg,32,8
	.type	revert_bg,@object       # @revert_bg
	.local	revert_bg
	.comm	revert_bg,32,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Change Foreground Color"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Change Background Color"
	.size	.L.str.5, 24

	.type	edit_color,@object      # @edit_color
	.local	edit_color
	.comm	edit_color,4,4
	.type	color_dialog,@object    # @color_dialog
	.local	color_dialog
	.comm	color_dialog,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-toolbox-color-dialog"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"update"
	.size	.L.str.7, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
