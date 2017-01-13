	.text
	.file	"colormap-commands.bc"
	.globl	colormap_edit_color_cmd_callback
	.align	16, 0x90
	.type	colormap_edit_color_cmd_callback,@function
colormap_edit_color_cmd_callback:       # @colormap_edit_color_cmd_callback
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
	subq	$296, %rsp              # imm = 0x128
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_6
.LBB0_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_colormap_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_colormap
	leaq	-80(%rbp), %rdi
	movl	$255, %r8d
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	imull	$3, 160(%rax), %ecx
	movslq	%ecx, %rax
	movq	-48(%rbp), %rsi
	movb	(%rsi,%rax), %dl
	movq	-32(%rbp), %rax
	imull	$3, 160(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-48(%rbp), %rsi
	movb	(%rsi,%rax), %r9b
	movq	-32(%rbp), %rax
	imull	$3, 160(%rax), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movq	-48(%rbp), %rsi
	movzbl	%dl, %ecx
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movzbl	%r9b, %edx
	movq	-104(%rbp), %r10        # 8-byte Reload
	movzbl	(%r10,%rax), %ecx
	callq	gimp_rgba_set_uchar
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movl	160(%rdi), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 200(%rax)
	jne	.LBB0_4
# BB#3:                                 # %if.then.17
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	action_data_get_context
	movabsq	$.L.str.1, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %r8
	movq	-32(%rbp), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%r8, -144(%rbp)         # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rsi
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	-136(%rbp), %r10        # 8-byte Reload
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movq	%r10, %rdx
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	-160(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-168(%rbp), %r11        # 8-byte Reload
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
	movq	%rax, 200(%rdx)
	movq	-32(%rbp), %rax
	movq	200(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$200, %rdx
	movq	%rax, %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.5, %rsi
	movabsq	$colormap_edit_color_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	200(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	movq	-32(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_viewable_dialog_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	action_data_get_context
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_viewable_dialog_set_viewable
	movabsq	$.L.str.6, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-32(%rbp), %rax
	movq	200(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-32(%rbp), %rcx
	movq	200(%rcx), %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gimp_color_dialog_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_dialog_set_color
.LBB0_5:                                # %if.end.42
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	movq	200(%rdi), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB0_6:                                # %return
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	colormap_edit_color_cmd_callback, .Lfunc_end0-colormap_edit_color_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	colormap_edit_color_update,@function
colormap_edit_color_update:             # @colormap_edit_color_update
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
	je	.LBB1_2
	jmp	.LBB1_5
.LBB1_5:                                # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_6
.LBB1_6:                                # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jne	.LBB1_4
	jmp	.LBB1_1
.LBB1_1:                                # %sw.bb
	jmp	.LBB1_4
.LBB1_2:                                # %sw.bb.3
	movl	$1, %ecx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	160(%rax), %esi
	movq	-16(%rbp), %rdx
	callq	gimp_image_set_colormap_entry
	movq	-40(%rbp), %rdi
	callq	gimp_image_flush
.LBB1_3:                                # %sw.bb.4
	movq	-32(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_hide
.LBB1_4:                                # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	colormap_edit_color_update, .Lfunc_end1-colormap_edit_color_update
	.cfi_endproc

	.globl	colormap_add_color_cmd_callback
	.align	16, 0x90
	.type	colormap_add_color_cmd_callback,@function
colormap_add_color_cmd_callback:        # @colormap_add_color_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_9
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.3
	jmp	.LBB2_9
.LBB2_4:                                # %if.end.4
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_colormap_size
	cmpl	$256, %eax              # imm = 0x100
	jge	.LBB2_9
# BB#5:                                 # %if.then.6
	cmpl	$0, -12(%rbp)
	je	.LBB2_7
# BB#6:                                 # %if.then.8
	leaq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_background
	jmp	.LBB2_8
.LBB2_7:                                # %if.else
	leaq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_foreground
.LBB2_8:                                # %if.end.9
	leaq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_image_add_colormap_entry
	movq	-40(%rbp), %rdi
	callq	gimp_image_flush
.LBB2_9:                                # %if.end.10
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	colormap_add_color_cmd_callback, .Lfunc_end2-colormap_add_color_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Edit colormap entry #%d"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Edit Colormap Entry"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-colormap"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-colormap-editor-color-dialog"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"destroy"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"update"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"description"
	.size	.L.str.6, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
