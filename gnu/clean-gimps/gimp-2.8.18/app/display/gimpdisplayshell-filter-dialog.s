	.text
	.file	"gimpdisplayshell-filter-dialog.bc"
	.globl	gimp_display_shell_filter_dialog_new
	.align	16, 0x90
	.type	gimp_display_shell_filter_dialog_new,@function
gimp_display_shell_filter_dialog_new:   # @gimp_display_shell_filter_dialog_new
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
	subq	$344, %rsp              # imm = 0x158
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
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_filter_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_16
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-56(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movl	$24, %ecx
	movl	%ecx, %edi
	movq	%rax, -72(%rbp)
	callq	g_slice_alloc0
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	32(%rsi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_get_user_context
	movabsq	$.L.str.2, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.5, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-80(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.4, %r8
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rdx
	movl	$4294967290, %r9d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.8, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-136(%rbp), %r15        # 8-byte Reload
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movq	-144(%rbp), %r12        # 8-byte Reload
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%r12, %rsi
	movq	-152(%rbp), %r13        # 8-byte Reload
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%r13, %rdx
	movq	-160(%rbp), %r15        # 8-byte Reload
	movl	%r9d, -196(%rbp)        # 4-byte Spill
	movq	%r15, %r9
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$-6, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	$-5, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r14, -208(%rbp)        # 8-byte Spill
	movl	%r11d, -212(%rbp)       # 4-byte Spill
	callq	gimp_viewable_dialog_new
	movq	-80(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-80(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_destroy_with_parent
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gimp_display_shell_filter_dialog_free, %rsi
	movq	-80(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-240(%rbp), %rdx        # 8-byte Reload
	callq	g_object_weak_ref
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_display_shell_filter_dialog_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	cmpq	$0, 640(%rcx)
	movq	%rax, -256(%rbp)        # 8-byte Spill
	je	.LBB0_14
# BB#13:                                # %if.then.37
	movq	-56(%rbp), %rax
	movq	640(%rax), %rdi
	callq	gimp_color_display_stack_clone
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$g_object_unref, %rsi
	movq	-80(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	callq	g_object_weak_ref
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.43
	callq	gimp_color_display_stack_new
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gimp_display_shell_filter_set
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_15:                               # %if.end.46
	movq	-56(%rbp), %rax
	movq	640(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_core_config_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	368(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_color_managed_interface_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_color_display_editor_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB0_16:                               # %return
	movq	-48(%rbp), %rax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_filter_dialog_new, .Lfunc_end0-gimp_display_shell_filter_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_filter_dialog_free,@function
gimp_display_shell_filter_dialog_free:  # @gimp_display_shell_filter_dialog_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_filter_dialog_free, .Lfunc_end1-gimp_display_shell_filter_dialog_free
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_filter_dialog_response,@function
gimp_display_shell_filter_dialog_response: # @gimp_display_shell_filter_dialog_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	callq	gimp_display_shell_filter_set
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_filter_dialog_response, .Lfunc_end2-gimp_display_shell_filter_dialog_response
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_filter_dialog_new,@object # @__func__.gimp_display_shell_filter_dialog_new
.L__func__.gimp_display_shell_filter_dialog_new:
	.asciz	"gimp_display_shell_filter_dialog_new"
	.size	.L__func__.gimp_display_shell_filter_dialog_new, 37

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Color Display Filters"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-display-filters"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-display-filter"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Configure Color Display Filters"
	.size	.L.str.5, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-display-filter-dialog"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gtk-cancel"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gtk-ok"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"response"
	.size	.L.str.9, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
