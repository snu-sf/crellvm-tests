	.text
	.file	"gimptoolbox-image-area.bc"
	.globl	gimp_toolbox_image_area_create
	.align	16, 0x90
	.type	gimp_toolbox_image_area_create,@function
gimp_toolbox_image_area_create:         # @gimp_toolbox_image_area_create
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_toolbox_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_toolbox_image_area_create, %rsi
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
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	xorl	%r9d, %r9d
	movl	$1, %ecx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r8d
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	-92(%rbp), %r10d        # 4-byte Reload
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	%r10d, %ecx
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	gimp_view_new_full_by_types
	movabsq	$.L.str.2, %rsi
	movabsq	$image_preview_set_viewable, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_context_get_image
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movabsq	$.L.str.5, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_help_set_help_data
	movq	-48(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_view_set_viewable, %rax
	movl	$2, %r8d
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.7, %rsi
	movabsq	$image_preview_clicked, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movabsq	$image_preview_drop_image, %rdx
	movq	-32(%rbp), %rcx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-40(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB0_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_toolbox_image_area_create, .Lfunc_end0-gimp_toolbox_image_area_create
	.cfi_endproc

	.align	16, 0x90
	.type	image_preview_set_viewable,@function
image_preview_set_viewable:             # @image_preview_set_viewable
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_3
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_view_get_viewable, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	gimp_dnd_xds_source_add
	jmp	.LBB1_7
.LBB1_3:                                # %if.else
	cmpq	$0, -16(%rbp)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true.4
	cmpq	$0, -24(%rbp)
	jne	.LBB1_6
# BB#5:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dnd_xds_source_remove
.LBB1_6:                                # %if.end
	jmp	.LBB1_7
.LBB1_7:                                # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	image_preview_set_viewable, .Lfunc_end1-image_preview_set_viewable
	.cfi_endproc

	.align	16, 0x90
	.type	image_preview_clicked,@function
image_preview_clicked:                  # @image_preview_clicked
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
	movabsq	$.L.str.8, %r8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -80(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	image_preview_clicked, .Lfunc_end2-image_preview_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	image_preview_drop_image,@function
image_preview_drop_image:               # @image_preview_drop_image
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
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_image
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	image_preview_drop_image, .Lfunc_end3-image_preview_drop_image
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_toolbox_image_area_create,@object # @__func__.gimp_toolbox_image_area_create
.L__func__.gimp_toolbox_image_area_create:
	.asciz	"gimp_toolbox_image_area_create"
	.size	.L__func__.gimp_toolbox_image_area_create, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_TOOLBOX (toolbox)"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"set-viewable"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s\n%s"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"The active image.\nClick to open the Image Dialog."
	.size	.L.str.4, 50

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Drag to an XDS enabled file-manager to save the image."
	.size	.L.str.5, 55

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image-changed"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"clicked"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-image-list|gimp-image-grid"
	.size	.L.str.8, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
