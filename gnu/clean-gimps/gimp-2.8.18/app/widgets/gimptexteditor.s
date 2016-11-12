	.text
	.file	"gimptexteditor.bc"
	.globl	gimp_text_editor_get_type
	.align	16, 0x90
	.type	gimp_text_editor_get_type,@function
gimp_text_editor_get_type:              # @gimp_text_editor_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_text_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_text_editor_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_dialog_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$1000, %edx             # imm = 0x3E8
	movabsq	$gimp_text_editor_class_intern_init, %rdi
	movl	$312, %r8d              # imm = 0x138
	movabsq	$gimp_text_editor_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_text_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_text_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_editor_get_type, .Lfunc_end0-gimp_text_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_editor_class_intern_init,@function
gimp_text_editor_class_intern_init:     # @gimp_text_editor_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_text_editor_parent_class
	cmpl	$0, GimpTextEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTextEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_text_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_editor_class_intern_init, .Lfunc_end1-gimp_text_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_editor_init,@function
gimp_text_editor_init:                  # @gimp_text_editor_init
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
	movq	$0, 280(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 296(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 304(%rdi)
	callq	gtk_widget_get_default_direction
	movl	%eax, %ecx
	subl	$2, %eax
	movl	%ecx, -12(%rbp)         # 4-byte Spill
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jb	.LBB2_1
	jmp	.LBB2_4
.LBB2_4:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB2_2
	jmp	.LBB2_3
.LBB2_1:                                # %sw.bb
	movq	-8(%rbp), %rax
	movl	$0, 264(%rax)
	jmp	.LBB2_3
.LBB2_2:                                # %sw.bb.1
	movq	-8(%rbp), %rax
	movl	$1, 264(%rax)
.LBB2_3:                                # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_text_editor_init, .Lfunc_end2-gimp_text_editor_init
	.cfi_endproc

	.globl	gimp_text_editor_new
	.align	16, 0x90
	.type	gimp_text_editor_new,@function
gimp_text_editor_new:                   # @gimp_text_editor_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$496, %rsp              # imm = 0x1F0
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm1, -104(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_72
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -56(%rbp)
	je	.LBB3_15
# BB#7:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB3_9
# BB#8:                                 # %if.then.3
	movl	$0, -164(%rbp)
	jmp	.LBB3_14
.LBB3_9:                                # %if.else.4
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_12
# BB#10:                                # %land.lhs.true
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB3_12
# BB#11:                                # %if.then.8
	movl	$1, -164(%rbp)
	jmp	.LBB3_13
.LBB3_12:                               # %if.else.9
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB3_13:                               # %if.end.11
	jmp	.LBB3_14
.LBB3_14:                               # %if.end.12
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB3_16
.LBB3_15:                               # %if.then.14
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_editor_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_72
.LBB3_17:                               # %if.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.end.17
	jmp	.LBB3_19
.LBB3_19:                               # %do.body.18
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB3_21
# BB#20:                                # %if.then.27
	movl	$0, -188(%rbp)
	jmp	.LBB3_26
.LBB3_21:                               # %if.else.28
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_24
# BB#22:                                # %land.lhs.true.31
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB3_24
# BB#23:                                # %if.then.35
	movl	$1, -188(%rbp)
	jmp	.LBB3_25
.LBB3_24:                               # %if.else.36
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB3_25:                               # %if.end.38
	jmp	.LBB3_26
.LBB3_26:                               # %if.end.39
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB3_28
# BB#27:                                # %if.then.42
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_editor_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_72
.LBB3_29:                               # %if.end.44
	jmp	.LBB3_30
.LBB3_30:                               # %do.end.45
	jmp	.LBB3_31
.LBB3_31:                               # %do.body.46
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB3_33
# BB#32:                                # %if.then.55
	movl	$0, -212(%rbp)
	jmp	.LBB3_38
.LBB3_33:                               # %if.else.56
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_36
# BB#34:                                # %land.lhs.true.59
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB3_36
# BB#35:                                # %if.then.63
	movl	$1, -212(%rbp)
	jmp	.LBB3_37
.LBB3_36:                               # %if.else.64
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB3_37:                               # %if.end.66
	jmp	.LBB3_38
.LBB3_38:                               # %if.end.67
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB3_40
# BB#39:                                # %if.then.70
	jmp	.LBB3_41
.LBB3_40:                               # %if.else.71
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_editor_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_72
.LBB3_41:                               # %if.end.72
	jmp	.LBB3_42
.LBB3_42:                               # %do.end.73
	jmp	.LBB3_43
.LBB3_43:                               # %do.body.74
	movq	-80(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_text_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB3_45
# BB#44:                                # %if.then.83
	movl	$0, -236(%rbp)
	jmp	.LBB3_50
.LBB3_45:                               # %if.else.84
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_48
# BB#46:                                # %land.lhs.true.87
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB3_48
# BB#47:                                # %if.then.91
	movl	$1, -236(%rbp)
	jmp	.LBB3_49
.LBB3_48:                               # %if.else.92
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB3_49:                               # %if.end.94
	jmp	.LBB3_50
.LBB3_50:                               # %if.end.95
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB3_52
# BB#51:                                # %if.then.98
	jmp	.LBB3_53
.LBB3_52:                               # %if.else.99
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_editor_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_72
.LBB3_53:                               # %if.end.100
	jmp	.LBB3_54
.LBB3_54:                               # %do.end.101
	jmp	.LBB3_55
.LBB3_55:                               # %do.body.102
	movq	-88(%rbp), %rax
	movq	%rax, -248(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.LBB3_57
# BB#56:                                # %if.then.111
	movl	$0, -260(%rbp)
	jmp	.LBB3_62
.LBB3_57:                               # %if.else.112
	movq	-248(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_60
# BB#58:                                # %land.lhs.true.115
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-256(%rbp), %rax
	jne	.LBB3_60
# BB#59:                                # %if.then.119
	movl	$1, -260(%rbp)
	jmp	.LBB3_61
.LBB3_60:                               # %if.else.120
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -260(%rbp)
.LBB3_61:                               # %if.end.122
	jmp	.LBB3_62
.LBB3_62:                               # %if.end.123
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB3_64
# BB#63:                                # %if.then.126
	jmp	.LBB3_65
.LBB3_64:                               # %if.else.127
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_editor_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_72
.LBB3_65:                               # %if.end.128
	jmp	.LBB3_66
.LBB3_66:                               # %do.end.129
	callq	gimp_text_editor_get_type
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.10, %r8
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.12, %rdx
	movabsq	$gimp_standard_help_func, %rdi
	movabsq	$.L.str.13, %r10
	movabsq	$.L.str.14, %r11
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-48(%rbp), %r15
	movq	-56(%rbp), %r12
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movq	%r15, %rdx
	movq	%r12, (%rsp)
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-272(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r14, -288(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movl	$4294967289, %edx       # imm = 0xFFFFFFF9
	movq	%rax, %rdi
	callq	gtk_dialog_add_button
	movabsq	$.L.str.16, %rsi
	movabsq	$gtk_widget_destroy, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	-112(%rbp), %r8
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	-304(%rbp), %r8         # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_text_editor_text_changed, %rcx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rdx
	movq	-112(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.18, %rsi
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rdi
	movq	-112(%rbp), %rdx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_menu_factory_manager_new
	movq	-112(%rbp), %rdx
	movq	%rax, 304(%rdx)
	movq	-112(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB3_68
# BB#67:                                # %if.then.146
	movq	-120(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	movl	-364(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
.LBB3_68:                               # %if.end.149
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	456(%rax), %rcx
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_text_style_editor_new
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rsi
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r8d, -380(%rbp)        # 4-byte Spill
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movl	-380(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -144(%rbp)
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	callq	gtk_scrolled_window_set_policy
	movq	-144(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-120(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	-396(%rbp), %edx        # 4-byte Reload
	movl	-396(%rbp), %ecx        # 4-byte Reload
	movl	-380(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_view_new_with_buffer
	movq	-112(%rbp), %rsi
	movq	%rax, 280(%rsi)
	movq	-112(%rbp), %rax
	movq	280(%rax), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_wrap_mode
	movq	-144(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	280(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-112(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_show
	movq	-112(%rbp), %rax
	movl	264(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	je	.LBB3_69
	jmp	.LBB3_73
.LBB3_73:                               # %if.end.149
	movl	-444(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -448(%rbp)        # 4-byte Spill
	je	.LBB3_70
	jmp	.LBB3_71
.LBB3_69:                               # %sw.bb
	movl	$1, %esi
	movq	-112(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_set_direction
	jmp	.LBB3_71
.LBB3_70:                               # %sw.bb.171
	movl	$2, %esi
	movq	-112(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_set_direction
.LBB3_71:                               # %sw.epilog
	movl	$200, %esi
	movl	$64, %edx
	movq	-112(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_set_size_request
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	-112(%rbp), %rdi
	movq	%rax, 288(%rdi)
	movq	-120(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-112(%rbp), %rsi
	movq	288(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -460(%rbp)        # 4-byte Spill
	movl	-460(%rbp), %ecx        # 4-byte Reload
	movl	-460(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_text_editor_font_toggled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rdi
	movq	288(%rdi), %rdi
	movq	-112(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-112(%rbp), %rcx
	movq	280(%rcx), %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_widget_grab_focus
	movq	-112(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	movq	-112(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
.LBB3_72:                               # %return
	movq	-40(%rbp), %rax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_editor_new, .Lfunc_end3-gimp_text_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_editor_text_changed,@function
gimp_text_editor_text_changed:          # @gimp_text_editor_text_changed
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
	subq	$16, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	text_editor_signals, %eax
	movq	%rsi, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_signal_emit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_editor_text_changed, .Lfunc_end4-gimp_text_editor_text_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_editor_font_toggled,@function
gimp_text_editor_font_toggled:          # @gimp_text_editor_font_toggled
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB5_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB5_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	pango_font_description_from_string
	movq	%rax, -24(%rbp)
.LBB5_3:                                # %if.end
	movq	-16(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_widget_modify_font
	cmpq	$0, -24(%rbp)
	je	.LBB5_5
# BB#4:                                 # %if.then.5
	movq	-24(%rbp), %rdi
	callq	pango_font_description_free
.LBB5_5:                                # %if.end.6
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_text_editor_font_toggled, .Lfunc_end5-gimp_text_editor_font_toggled
	.cfi_endproc

	.globl	gimp_text_editor_set_text
	.align	16, 0x90
	.type	gimp_text_editor_set_text,@function
gimp_text_editor_set_text:              # @gimp_text_editor_set_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_text_editor_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_editor_set_text, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_21
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	jne	.LBB6_15
# BB#14:                                # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	jne	.LBB6_16
.LBB6_15:                               # %if.then.14
	jmp	.LBB6_17
.LBB6_16:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_editor_set_text, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_21
.LBB6_17:                               # %if.end.16
	jmp	.LBB6_18
.LBB6_18:                               # %do.end.17
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_view_get_buffer
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB6_20
# BB#19:                                # %if.then.22
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gtk_text_buffer_set_text
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.23
	movabsq	$.L.str.24, %rsi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_set_text
.LBB6_21:                               # %if.end.24
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_editor_set_text, .Lfunc_end6-gimp_text_editor_set_text
	.cfi_endproc

	.globl	gimp_text_editor_get_text
	.align	16, 0x90
	.type	gimp_text_editor_get_text,@function
gimp_text_editor_get_text:              # @gimp_text_editor_get_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_text_editor_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_editor_get_text, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_view_get_buffer
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_text_buffer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_text_buffer_get_text
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_text_editor_get_text, .Lfunc_end7-gimp_text_editor_get_text
	.cfi_endproc

	.globl	gimp_text_editor_set_direction
	.align	16, 0x90
	.type	gimp_text_editor_set_direction,@function
gimp_text_editor_set_direction:         # @gimp_text_editor_set_direction
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_editor_set_direction, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_20
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	264(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB8_14
# BB#13:                                # %if.then.13
	jmp	.LBB8_20
.LBB8_14:                               # %if.end.14
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 264(%rcx)
	movq	-8(%rbp), %rcx
	cmpq	$0, 280(%rcx)
	je	.LBB8_19
# BB#15:                                # %if.then.17
	movq	-8(%rbp), %rax
	movl	264(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	je	.LBB8_16
	jmp	.LBB8_21
.LBB8_21:                               # %if.then.17
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB8_17
	jmp	.LBB8_18
.LBB8_16:                               # %sw.bb
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_set_direction
	jmp	.LBB8_18
.LBB8_17:                               # %sw.bb.20
	movl	$2, %esi
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_set_direction
.LBB8_18:                               # %sw.epilog
	jmp	.LBB8_19
.LBB8_19:                               # %if.end.22
	movq	-8(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	text_editor_signals+4, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB8_20:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_text_editor_set_direction, .Lfunc_end8-gimp_text_editor_set_direction
	.cfi_endproc

	.globl	gimp_text_editor_get_direction
	.align	16, 0x90
	.type	gimp_text_editor_get_direction,@function
gimp_text_editor_get_direction:         # @gimp_text_editor_get_direction
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_editor_get_direction, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	264(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_text_editor_get_direction, .Lfunc_end9-gimp_text_editor_get_direction
	.cfi_endproc

	.globl	gimp_text_editor_set_font_name
	.align	16, 0x90
	.type	gimp_text_editor_set_font_name,@function
gimp_text_editor_set_font_name:         # @gimp_text_editor_set_font_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_editor_set_font_name, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_20
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB10_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_free
.LBB10_14:                              # %if.end.15
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 272(%rdi)
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB10_20
# BB#15:                                # %if.then.22
	movq	$0, -48(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB10_17
# BB#16:                                # %if.then.25
	movq	-16(%rbp), %rdi
	callq	pango_font_description_from_string
	movq	%rax, -48(%rbp)
.LBB10_17:                              # %if.end.27
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_widget_modify_font
	cmpq	$0, -48(%rbp)
	je	.LBB10_19
# BB#18:                                # %if.then.29
	movq	-48(%rbp), %rdi
	callq	pango_font_description_free
.LBB10_19:                              # %if.end.30
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.31
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_text_editor_set_font_name, .Lfunc_end10-gimp_text_editor_set_font_name
	.cfi_endproc

	.globl	gimp_text_editor_get_font_name
	.align	16, 0x90
	.type	gimp_text_editor_get_font_name,@function
gimp_text_editor_get_font_name:         # @gimp_text_editor_get_font_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_editor_get_font_name, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_text_editor_get_font_name, .Lfunc_end11-gimp_text_editor_get_font_name
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_editor_class_init,@function
gimp_text_editor_class_init:            # @gimp_text_editor_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp43:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.25, %rdi
	movl	$1, %edx
	movl	$984, %ecx              # imm = 0x3D8
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movabsq	$gimp_text_editor_finalize, %r11
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 984(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 992(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -36(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -56(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.26, %rdi
	movl	$1, %edx
	movl	$992, %ecx              # imm = 0x3E0
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, text_editor_signals
	movq	-16(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	callq	g_signal_new
	movl	%eax, text_editor_signals+4
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_text_editor_class_init, .Lfunc_end12-gimp_text_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_editor_finalize,@function
gimp_text_editor_finalize:              # @gimp_text_editor_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_text_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_free
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB13_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB13_4:                               # %if.end.6
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_text_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_text_editor_finalize, .Lfunc_end13-gimp_text_editor_finalize
	.cfi_endproc

	.type	gimp_text_editor_get_type.g_define_type_id__volatile,@object # @gimp_text_editor_get_type.g_define_type_id__volatile
	.local	gimp_text_editor_get_type.g_define_type_id__volatile
	.comm	gimp_text_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTextEditor"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_text_editor_new,@object # @__func__.gimp_text_editor_new
.L__func__.gimp_text_editor_new:
	.asciz	"gimp_text_editor_new"
	.size	.L__func__.gimp_text_editor_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"title != NULL"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"parent == NULL || GTK_IS_WINDOW (parent)"
	.size	.L.str.3, 41

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_TEXT (text)"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_TEXT_BUFFER (text_buffer)"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"title"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"role"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-text-editor"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"transient-for"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"help-func"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"help-id"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-text-editor-dialog"
	.size	.L.str.14, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gtk-close"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"response"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"changed"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"<TextEditor>"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"/text-editor-toolbar"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_Use selected font"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"toggled"
	.size	.L.str.21, 8

	.type	.L__func__.gimp_text_editor_set_text,@object # @__func__.gimp_text_editor_set_text
.L__func__.gimp_text_editor_set_text:
	.asciz	"gimp_text_editor_set_text"
	.size	.L__func__.gimp_text_editor_set_text, 26

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"GIMP_IS_TEXT_EDITOR (editor)"
	.size	.L.str.22, 29

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"text != NULL || len == 0"
	.size	.L.str.23, 25

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.zero	1
	.size	.L.str.24, 1

	.type	.L__func__.gimp_text_editor_get_text,@object # @__func__.gimp_text_editor_get_text
.L__func__.gimp_text_editor_get_text:
	.asciz	"gimp_text_editor_get_text"
	.size	.L__func__.gimp_text_editor_get_text, 26

	.type	.L__func__.gimp_text_editor_set_direction,@object # @__func__.gimp_text_editor_set_direction
.L__func__.gimp_text_editor_set_direction:
	.asciz	"gimp_text_editor_set_direction"
	.size	.L__func__.gimp_text_editor_set_direction, 31

	.type	text_editor_signals,@object # @text_editor_signals
	.local	text_editor_signals
	.comm	text_editor_signals,8,4
	.type	.L__func__.gimp_text_editor_get_direction,@object # @__func__.gimp_text_editor_get_direction
.L__func__.gimp_text_editor_get_direction:
	.asciz	"gimp_text_editor_get_direction"
	.size	.L__func__.gimp_text_editor_get_direction, 31

	.type	.L__func__.gimp_text_editor_set_font_name,@object # @__func__.gimp_text_editor_set_font_name
.L__func__.gimp_text_editor_set_font_name:
	.asciz	"gimp_text_editor_set_font_name"
	.size	.L__func__.gimp_text_editor_set_font_name, 31

	.type	.L__func__.gimp_text_editor_get_font_name,@object # @__func__.gimp_text_editor_get_font_name
.L__func__.gimp_text_editor_get_font_name:
	.asciz	"gimp_text_editor_get_font_name"
	.size	.L__func__.gimp_text_editor_get_font_name, 31

	.type	gimp_text_editor_parent_class,@object # @gimp_text_editor_parent_class
	.local	gimp_text_editor_parent_class
	.comm	gimp_text_editor_parent_class,8,8
	.type	GimpTextEditor_private_offset,@object # @GimpTextEditor_private_offset
	.local	GimpTextEditor_private_offset
	.comm	GimpTextEditor_private_offset,4,4
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"text-changed"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"dir-changed"
	.size	.L.str.26, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
