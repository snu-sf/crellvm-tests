	.text
	.file	"template-options-dialog.bc"
	.globl	template_options_dialog_new
	.align	16, 0x90
	.type	template_options_dialog_new,@function
template_options_dialog_new:            # @template_options_dialog_new
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
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%r10, -104(%rbp)
	movq	%rax, -112(%rbp)
	movq	$0, -128(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -56(%rbp)
	je	.LBB0_10
# BB#2:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_template_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then
	movl	$0, -156(%rbp)
	jmp	.LBB0_9
.LBB0_4:                                # %if.else
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_7
# BB#5:                                 # %land.lhs.true
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB0_7
# BB#6:                                 # %if.then.4
	movl	$1, -156(%rbp)
	jmp	.LBB0_8
.LBB0_7:                                # %if.else.5
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB0_8:                                # %if.end
	jmp	.LBB0_9
.LBB0_9:                                # %if.end.7
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB0_11
.LBB0_10:                               # %if.then.9
	jmp	.LBB0_12
.LBB0_11:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.template_options_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_66
.LBB0_12:                               # %if.end.11
	jmp	.LBB0_13
.LBB0_13:                               # %do.end
	jmp	.LBB0_14
.LBB0_14:                               # %do.body.12
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.21
	movl	$0, -180(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.22
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.25
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.29
	movl	$1, -180(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.30
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.33
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB0_23
# BB#22:                                # %if.then.36
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.template_options_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_66
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.39
	jmp	.LBB0_26
.LBB0_26:                               # %do.body.40
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.49
	movl	$0, -204(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.50
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_31
# BB#29:                                # %land.lhs.true.53
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.57
	movl	$1, -204(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.58
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB0_32:                               # %if.end.60
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.61
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB0_35
# BB#34:                                # %if.then.64
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.template_options_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_66
.LBB0_36:                               # %if.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %do.end.67
	jmp	.LBB0_38
.LBB0_38:                               # %do.body.68
	cmpq	$0, -80(%rbp)
	je	.LBB0_40
# BB#39:                                # %if.then.70
	jmp	.LBB0_41
.LBB0_40:                               # %if.else.71
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.template_options_dialog_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_66
.LBB0_41:                               # %if.end.72
	jmp	.LBB0_42
.LBB0_42:                               # %do.end.73
	jmp	.LBB0_43
.LBB0_43:                               # %do.body.74
	cmpq	$0, -88(%rbp)
	je	.LBB0_45
# BB#44:                                # %if.then.76
	jmp	.LBB0_46
.LBB0_45:                               # %if.else.77
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.template_options_dialog_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_66
.LBB0_46:                               # %if.end.78
	jmp	.LBB0_47
.LBB0_47:                               # %do.end.79
	jmp	.LBB0_48
.LBB0_48:                               # %do.body.80
	cmpq	$0, -96(%rbp)
	je	.LBB0_50
# BB#49:                                # %if.then.82
	jmp	.LBB0_51
.LBB0_50:                               # %if.else.83
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.template_options_dialog_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_66
.LBB0_51:                               # %if.end.84
	jmp	.LBB0_52
.LBB0_52:                               # %do.end.85
	jmp	.LBB0_53
.LBB0_53:                               # %do.body.86
	cmpq	$0, -104(%rbp)
	je	.LBB0_55
# BB#54:                                # %if.then.88
	jmp	.LBB0_56
.LBB0_55:                               # %if.else.89
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.template_options_dialog_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_66
.LBB0_56:                               # %if.end.90
	jmp	.LBB0_57
.LBB0_57:                               # %do.end.91
	jmp	.LBB0_58
.LBB0_58:                               # %do.body.92
	cmpq	$0, -112(%rbp)
	je	.LBB0_60
# BB#59:                                # %if.then.94
	jmp	.LBB0_61
.LBB0_60:                               # %if.else.95
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.template_options_dialog_new, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_66
.LBB0_61:                               # %if.end.96
	jmp	.LBB0_62
.LBB0_62:                               # %do.end.97
	movl	$32, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	-120(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-56(%rbp), %rax
	movq	-120(%rbp), %rdi
	movq	%rax, 24(%rdi)
	cmpq	$0, -56(%rbp)
	je	.LBB0_64
# BB#63:                                # %if.then.102
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -56(%rbp)
	jmp	.LBB0_65
.LBB0_64:                               # %if.else.108
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	296(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_static_name
.LBB0_65:                               # %if.end.118
	movabsq	$gimp_standard_help_func, %rax
	movabsq	$.L.str.10, %rcx
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.11, %rsi
	movl	$4294967291, %edi       # imm = 0xFFFFFFFB
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-128(%rbp), %r10
	movq	-64(%rbp), %r11
	movq	-80(%rbp), %rbx
	movq	-88(%rbp), %r14
	movq	-96(%rbp), %r8
	movq	-104(%rbp), %r15
	movq	-72(%rbp), %r12
	movq	-112(%rbp), %r13
	movl	%edi, -260(%rbp)        # 4-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movq	%rbx, %rdx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movq	%r14, %rcx
	movq	%r9, -296(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	%r12, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%r13, 16(%rsp)
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$-6, 32(%rsp)
	movq	-272(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	movl	$-5, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	callq	gimp_viewable_dialog_new
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-120(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_type_check_instance_cast
	movabsq	$template_options_dialog_free, %rsi
	movq	-120(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-320(%rbp), %rdx        # 8-byte Reload
	callq	g_object_weak_ref
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edx
	movq	-56(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	16(%rax), %rsi
	callq	gimp_template_editor_new
	movq	-120(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-136(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-120(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_66:                               # %return
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
	.size	template_options_dialog_new, .Lfunc_end0-template_options_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	template_options_dialog_free,@function
template_options_dialog_free:           # @template_options_dialog_free
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
	movl	$32, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	template_options_dialog_free, .Lfunc_end1-template_options_dialog_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.template_options_dialog_new,@object # @__func__.template_options_dialog_new
.L__func__.template_options_dialog_new:
	.asciz	"template_options_dialog_new"
	.size	.L__func__.template_options_dialog_new, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"template == NULL || GIMP_IS_TEMPLATE (template)"
	.size	.L.str.1, 48

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GTK_IS_WIDGET (parent)"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"title != NULL"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"role != NULL"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"stock_id != NULL"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"desc != NULL"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"help_id != NULL"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Unnamed"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-cancel"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gtk-ok"
	.size	.L.str.11, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
