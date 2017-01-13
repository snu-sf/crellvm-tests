	.text
	.file	"image-properties-dialog.bc"
	.globl	image_properties_dialog_new
	.align	16, 0x90
	.type	image_properties_dialog_new,@function
image_properties_dialog_new:            # @image_properties_dialog_new
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$392, %rsp              # imm = 0x188
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.image_properties_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_38
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.image_properties_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_38
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpq	$0, -72(%rbp)
	je	.LBB0_34
# BB#26:                                # %lor.lhs.false
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.49
	movl	$0, -164(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.50
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_31
# BB#29:                                # %land.lhs.true.53
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.57
	movl	$1, -164(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.58
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB0_32:                               # %if.end.60
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.61
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB0_35
.LBB0_34:                               # %if.then.64
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.image_properties_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_38
.LBB0_36:                               # %if.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %do.end.67
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rdi
	movq	-64(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.4, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %r8
	movabsq	$gimp_standard_help_func, %rdi
	movabsq	$.L.str.7, %rcx
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movq	-72(%rbp), %r11
	movq	-192(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-184(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-200(%rbp), %r15        # 8-byte Reload
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movq	%r15, %rdx
	movq	-216(%rbp), %r12        # 8-byte Reload
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%r12, %rcx
	movq	%rax, %r9
	movq	%r11, (%rsp)
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r12, 16(%rsp)
	movq	-232(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	movl	$-5, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r10, -240(%rbp)        # 8-byte Spill
	callq	gimp_viewable_dialog_new
	movabsq	$.L.str.8, %rsi
	movabsq	$gtk_widget_destroy, %rcx
	xorl	%r13d, %r13d
	movl	%r13d, %edx
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	-248(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_notebook_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	callq	gimp_image_prop_view_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-88(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movq	-96(%rbp), %rsi
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-96(%rbp), %rdi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	callq	gimp_image_profile_view_new
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdi
	movq	-96(%rbp), %rsi
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-96(%rbp), %rdi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	callq	gimp_image_comment_editor_new
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdi
	movq	-96(%rbp), %rsi
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-96(%rbp), %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movq	-88(%rbp), %rdx
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_38:                               # %return
	movq	-48(%rbp), %rax
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	image_properties_dialog_new, .Lfunc_end0-image_properties_dialog_new
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.image_properties_dialog_new,@object # @__func__.image_properties_dialog_new
.L__func__.image_properties_dialog_new:
	.asciz	"image_properties_dialog_new"
	.size	.L__func__.image_properties_dialog_new, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"parent == NULL || GTK_IS_WIDGET (parent)"
	.size	.L.str.3, 41

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Image Properties"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-image-properties"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-info"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gtk-close"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"response"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Properties"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Color Profile"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Comment"
	.size	.L.str.11, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
