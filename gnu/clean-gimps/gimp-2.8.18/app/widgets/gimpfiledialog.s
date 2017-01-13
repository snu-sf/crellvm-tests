	.text
	.file	"gimpfiledialog.bc"
	.globl	gimp_file_dialog_get_type
	.align	16, 0x90
	.type	gimp_file_dialog_get_type,@function
gimp_file_dialog_get_type:              # @gimp_file_dialog_get_type
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
	movq	gimp_file_dialog_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_file_dialog_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_file_chooser_dialog_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$952, %edx              # imm = 0x3B8
	movabsq	$gimp_file_dialog_class_intern_init, %rdi
	movl	$352, %r8d              # imm = 0x160
	movabsq	$gimp_file_dialog_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movabsq	$gimp_file_dialog_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_file_dialog_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_file_dialog_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_file_dialog_get_type, .Lfunc_end0-gimp_file_dialog_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_class_intern_init,@function
gimp_file_dialog_class_intern_init:     # @gimp_file_dialog_class_intern_init
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
	movq	%rax, gimp_file_dialog_parent_class
	cmpl	$0, GimpFileDialog_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpFileDialog_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_file_dialog_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_file_dialog_class_intern_init, .Lfunc_end1-gimp_file_dialog_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_init,@function
gimp_file_dialog_init:                  # @gimp_file_dialog_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_file_dialog_init, .Lfunc_end2-gimp_file_dialog_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_progress_iface_init,@function
gimp_file_dialog_progress_iface_init:   # @gimp_file_dialog_progress_iface_init
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
	movabsq	$gimp_file_dialog_progress_get_window_id, %rax
	movabsq	$gimp_file_dialog_progress_pulse, %rcx
	movabsq	$gimp_file_dialog_progress_get_value, %rdx
	movabsq	$gimp_file_dialog_progress_set_value, %rsi
	movabsq	$gimp_file_dialog_progress_set_text, %r8
	movabsq	$gimp_file_dialog_progress_is_active, %r9
	movabsq	$gimp_file_dialog_progress_end, %r10
	movabsq	$gimp_file_dialog_progress_start, %r11
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r11, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r10, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r9, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r8, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 56(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 64(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_file_dialog_progress_iface_init, .Lfunc_end3-gimp_file_dialog_progress_iface_init
	.cfi_endproc

	.globl	gimp_file_dialog_new
	.align	16, 0x90
	.type	gimp_file_dialog_new,@function
gimp_file_dialog_new:                   # @gimp_file_dialog_new
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
.Ltmp15:
	.cfi_offset %rbx, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movl	$0, -124(%rbp)
	movl	$0, -128(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -148(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -148(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB4_47
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -56(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB4_47
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.17
	cmpq	$0, -64(%rbp)
	je	.LBB4_20
# BB#19:                                # %if.then.19
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB4_47
.LBB4_21:                               # %if.end.21
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.22
	jmp	.LBB4_23
.LBB4_23:                               # %do.body.23
	cmpq	$0, -72(%rbp)
	je	.LBB4_25
# BB#24:                                # %if.then.25
	jmp	.LBB4_26
.LBB4_25:                               # %if.else.26
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB4_47
.LBB4_26:                               # %if.end.27
	jmp	.LBB4_27
.LBB4_27:                               # %do.end.28
	jmp	.LBB4_28
.LBB4_28:                               # %do.body.29
	cmpq	$0, -80(%rbp)
	je	.LBB4_30
# BB#29:                                # %if.then.31
	jmp	.LBB4_31
.LBB4_30:                               # %if.else.32
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB4_47
.LBB4_31:                               # %if.end.33
	jmp	.LBB4_32
.LBB4_32:                               # %do.end.34
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB4_33
	jmp	.LBB4_48
.LBB4_48:                               # %do.end.34
	movl	-172(%rbp), %eax        # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jb	.LBB4_34
	jmp	.LBB4_41
.LBB4_33:                               # %sw.bb
	movabsq	$.L.str.7, %rdi
	movl	$0, -128(%rbp)
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -104(%rbp)
	callq	gettext
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.8, %rdi
	movq	%rax, -112(%rbp)
	movq	%rdi, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	cmpq	$0, %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -124(%rbp)
	jmp	.LBB4_43
.LBB4_34:                               # %sw.bb.38
	movl	$1, -128(%rbp)
	cmpl	$1, -44(%rbp)
	jne	.LBB4_36
# BB#35:                                # %cond.true
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB4_37
.LBB4_36:                               # %cond.false
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB4_37:                               # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	cmpl	$1, -44(%rbp)
	jne	.LBB4_39
# BB#38:                                # %cond.true.45
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB4_40
.LBB4_39:                               # %cond.false.48
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB4_40:                               # %cond.end.51
	movq	-192(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.10, %rdi
	movq	%rax, -104(%rbp)
	callq	gettext
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.11, %rdi
	movq	%rax, -112(%rbp)
	movq	%rdi, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	cmpq	$0, %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -124(%rbp)
	jmp	.LBB4_43
.LBB4_41:                               # %sw.default
	jmp	.LBB4_42
.LBB4_42:                               # %do.body.58
	movabsq	$.L.str.1, %rdi
	movl	$8, %esi
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rcx
	movl	$356, %r8d              # imm = 0x164
	movabsq	$.L__func__.gimp_file_dialog_new, %r9
	movb	$0, %al
	callq	g_log
	movq	$0, -32(%rbp)
	jmp	.LBB4_47
.LBB4_43:                               # %sw.epilog
	callq	gimp_file_dialog_get_type
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rdi
	movl	$1, %r8d
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %r14
	movl	-128(%rbp), %r10d
	movl	-124(%rbp), %r15d
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movl	%r8d, -212(%rbp)        # 4-byte Spill
	movq	%r14, %r8
	movl	%r10d, (%rsp)
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r15d, 16(%rsp)
	movq	-200(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r11, -224(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967291, %r8d       # imm = 0xFFFFFFFB
	xorl	%r10d, %r10d
	movl	%r10d, %r9d
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_add_buttons
	movq	-88(%rbp), %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-88(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-88(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_file_dialog_help_func, %rsi
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	gimp_help_connect
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 668(%rax)
	je	.LBB4_46
# BB#44:                                # %land.lhs.true.73
	cmpq	$0, -80(%rbp)
	je	.LBB4_46
# BB#45:                                # %if.then.75
	movq	-88(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_action_area
	movabsq	$.L.str.21, %rdi
	movq	%rax, -160(%rbp)
	callq	gtk_button_new_from_stock
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-292(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -296(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-296(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-160(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_button_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_button_box_set_child_secondary
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_strdup
	movabsq	$.L.str.22, %rsi
	movabsq	$g_free, %rcx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_file_dialog_help_clicked, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	movq	-168(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
.LBB4_46:                               # %if.end.90
	movl	$4, %esi
	movq	-88(%rbp), %rdi
	callq	gimp_file_dialog_add_user_dir
	movl	$1, %esi
	movq	-88(%rbp), %rdi
	callq	gimp_file_dialog_add_user_dir
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_file_dialog_add_preview
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %edx
	movq	-96(%rbp), %rcx
	movq	-104(%rbp), %r8
	callq	gimp_file_dialog_add_filters
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %r8
	callq	gimp_file_dialog_add_proc_selection
	callq	gimp_progress_box_new
	movq	-88(%rbp), %rcx
	movq	%rax, 336(%rcx)
	movq	-88(%rbp), %rax
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
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rcx
	movq	336(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-88(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
.LBB4_47:                               # %return
	movq	-32(%rbp), %rax
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_file_dialog_new, .Lfunc_end4-gimp_file_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_help_func,@function
gimp_file_dialog_help_func:             # @gimp_file_dialog_help_func
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_get_focus
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	cmpq	328(%rsi), %rax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_file_proc_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_file_proc_view_get_help_id
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_standard_help_func
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_standard_help_func
.LBB5_3:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_file_dialog_help_func, .Lfunc_end5-gimp_file_dialog_help_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_help_clicked,@function
gimp_file_dialog_help_clicked:          # @gimp_file_dialog_help_clicked
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
	subq	$16, %rsp
	movabsq	$.L.str.22, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	g_object_get_data
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_standard_help_func
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_file_dialog_help_clicked, .Lfunc_end6-gimp_file_dialog_help_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_add_user_dir,@function
gimp_file_dialog_add_user_dir:          # @gimp_file_dialog_add_user_dir
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	g_get_user_special_dir
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_add_shortcut_folder
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB7_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_file_dialog_add_user_dir, .Lfunc_end7-gimp_file_dialog_add_user_dir
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_add_preview,@function
gimp_file_dialog_add_preview:           # @gimp_file_dialog_add_preview
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	cmpl	$0, 352(%rsi)
	ja	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_use_preview_label
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_file_dialog_selection_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_file_dialog_update_preview, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	movq	%rax, %rdi
	callq	gimp_thumb_box_new
	movq	-8(%rbp), %rcx
	movq	%rax, 312(%rcx)
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	312(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_preview_widget
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdi
	callq	gtk_widget_show
.LBB8_3:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_file_dialog_add_preview, .Lfunc_end8-gimp_file_dialog_add_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_add_filters,@function
gimp_file_dialog_add_filters:           # @gimp_file_dialog_add_filters
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -56(%rbp)
	callq	gtk_file_filter_new
	movabsq	$.L.str.36, %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_file_filter_set_name
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_add_filter
	movabsq	$.L.str.37, %rsi
	movq	-48(%rbp), %rdi
	callq	gtk_file_filter_add_pattern
	callq	gtk_file_filter_new
	movabsq	$.L.str.38, %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_file_filter_set_name
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_add_filter
	cmpq	$0, -40(%rbp)
	je	.LBB9_5
# BB#1:                                 # %if.then
	callq	gtk_file_filter_new
	movq	%rax, -56(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then.9
	movabsq	$.L.str.39, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_file_filter_set_name
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movabsq	$.L.str.40, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_file_filter_set_name
.LBB9_4:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_add_filter
.LBB9_5:                                # %if.end.14
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB9_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB9_14
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB9_6 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	gimp_file_dialog_process_procedure
	cmpq	$0, -80(%rbp)
	je	.LBB9_9
# BB#8:                                 # %if.then.17
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_add_filter
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB9_9:                                # %if.end.20
                                        #   in Loop: Header=BB9_6 Depth=1
	jmp	.LBB9_10
.LBB9_10:                               # %for.inc
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB9_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB9_13
.LBB9_12:                               # %cond.false
                                        #   in Loop: Header=BB9_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB9_13
.LBB9_13:                               # %cond.end
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB9_6
.LBB9_14:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB9_15:                               # %for.cond.22
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB9_21
# BB#16:                                # %for.body.24
                                        #   in Loop: Header=BB9_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	callq	gimp_file_dialog_process_procedure
# BB#17:                                # %for.inc.27
                                        #   in Loop: Header=BB9_15 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB9_19
# BB#18:                                # %cond.true.29
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB9_20
.LBB9_19:                               # %cond.false.31
                                        #   in Loop: Header=BB9_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB9_20
.LBB9_20:                               # %cond.end.32
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB9_15
.LBB9_21:                               # %for.end.34
	cmpq	$0, -56(%rbp)
	je	.LBB9_23
# BB#22:                                # %if.then.36
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filter
	jmp	.LBB9_24
.LBB9_23:                               # %if.else.39
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filter
.LBB9_24:                               # %if.end.42
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_file_dialog_add_filters, .Lfunc_end9-gimp_file_dialog_add_filters
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_add_proc_selection,@function
gimp_file_dialog_add_proc_selection:    # @gimp_file_dialog_add_proc_selection
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
	subq	$128, %rsp
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, %rdi
	callq	gtk_expander_new_with_mnemonic
	movq	-8(%rbp), %rcx
	movq	%rax, 320(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	320(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_extra_widget
	movq	-8(%rbp), %rax
	movq	320(%rax), %rdi
	callq	gtk_widget_show
	xorl	%r10d, %r10d
	movl	%r10d, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r10d
	movq	%rax, %rdi
	movl	%r10d, %esi
	movl	%r10d, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$200, %edx
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	gimp_file_proc_view_new
	movq	-8(%rbp), %rcx
	movq	%rax, 328(%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_file_dialog_proc_changed, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_file_proc_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	%rax, %rdi
	callq	gimp_file_proc_view_set_proc
	movl	%eax, -116(%rbp)        # 4-byte Spill
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_file_dialog_add_proc_selection, .Lfunc_end10-gimp_file_dialog_add_proc_selection
	.cfi_endproc

	.globl	gimp_file_dialog_set_sensitive
	.align	16, 0x90
	.type	gimp_file_dialog_set_sensitive,@function
gimp_file_dialog_set_sensitive:         # @gimp_file_dialog_set_sensitive
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_file_dialog_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_set_sensitive, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_26
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 336(%rax)
	jne	.LBB11_14
# BB#13:                                # %if.then.12
	jmp	.LBB11_26
.LBB11_14:                              # %if.end.13
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB11_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB11_25
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB11_15 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB11_18
# BB#17:                                # %cond.true
                                        #   in Loop: Header=BB11_15 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB11_20
	jmp	.LBB11_19
.LBB11_18:                              # %cond.false
                                        #   in Loop: Header=BB11_15 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB11_20
	jmp	.LBB11_19
.LBB11_19:                              # %if.then.23
	jmp	.LBB11_25
.LBB11_20:                              # %if.end.24
                                        #   in Loop: Header=BB11_15 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB11_15 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB11_23
# BB#22:                                # %cond.true.26
                                        #   in Loop: Header=BB11_15 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_24
.LBB11_23:                              # %cond.false.28
                                        #   in Loop: Header=BB11_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_24
.LBB11_24:                              # %cond.end
                                        #   in Loop: Header=BB11_15 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB11_15
.LBB11_25:                              # %for.end
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	cmpl	$0, -12(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 344(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 348(%rax)
.LBB11_26:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_file_dialog_set_sensitive, .Lfunc_end11-gimp_file_dialog_set_sensitive
	.cfi_endproc

	.globl	gimp_file_dialog_set_file_proc
	.align	16, 0x90
	.type	gimp_file_dialog_set_file_proc,@function
gimp_file_dialog_set_file_proc:         # @gimp_file_dialog_set_file_proc
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_file_dialog_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_set_file_proc, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_14
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	272(%rcx), %rax
	je	.LBB12_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_file_proc_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_file_proc_view_set_proc
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB12_14:                              # %if.end.17
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_file_dialog_set_file_proc, .Lfunc_end12-gimp_file_dialog_set_file_proc
	.cfi_endproc

	.globl	gimp_file_dialog_set_open_image
	.align	16, 0x90
	.type	gimp_file_dialog_set_open_image,@function
gimp_file_dialog_set_open_image:        # @gimp_file_dialog_set_open_image
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_file_dialog_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_set_open_image, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_26
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB13_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB13_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB13_21
.LBB13_16:                              # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB13_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB13_20
.LBB13_19:                              # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB13_20:                              # %if.end.32
	jmp	.LBB13_21
.LBB13_21:                              # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB13_23
.LBB13_22:                              # %if.then.36
	jmp	.LBB13_24
.LBB13_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_set_open_image, %rsi
	movabsq	$.L.str.26, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_26
.LBB13_24:                              # %if.end.38
	jmp	.LBB13_25
.LBB13_25:                              # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 280(%rcx)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 288(%rax)
.LBB13_26:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_file_dialog_set_open_image, .Lfunc_end13-gimp_file_dialog_set_open_image
	.cfi_endproc

	.globl	gimp_file_dialog_set_save_image
	.align	16, 0x90
	.type	gimp_file_dialog_set_save_image,@function
gimp_file_dialog_set_save_image:        # @gimp_file_dialog_set_save_image
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
	subq	$176, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_file_dialog_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_set_save_image, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_79
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB14_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB14_20
.LBB14_15:                              # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB14_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB14_19
.LBB14_18:                              # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB14_19:                              # %if.end.31
	jmp	.LBB14_20
.LBB14_20:                              # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB14_22
# BB#21:                                # %if.then.35
	jmp	.LBB14_23
.LBB14_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_set_save_image, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_79
.LBB14_23:                              # %if.end.37
	jmp	.LBB14_24
.LBB14_24:                              # %do.end.38
	callq	gimp_file_dialog_get_documents_uri
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 280(%rdx)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 292(%rax)
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 296(%rax)
	movl	-36(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 300(%rax)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 304(%rdx)
	movq	-8(%rbp), %rdi
	callq	gimp_file_dialog_set_file_proc
	cmpl	$0, -32(%rbp)
	jne	.LBB14_50
# BB#25:                                # %if.then.45
	cmpl	$0, -28(%rbp)
	je	.LBB14_27
# BB#26:                                # %if.then.47
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_save_a_copy_uri
	movq	%rax, -56(%rbp)
.LBB14_27:                              # %if.end.49
	cmpq	$0, -56(%rbp)
	jne	.LBB14_29
# BB#28:                                # %if.then.51
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -56(%rbp)
.LBB14_29:                              # %if.end.53
	cmpq	$0, -56(%rbp)
	jne	.LBB14_31
# BB#30:                                # %if.then.55
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
.LBB14_31:                              # %if.end.58
	cmpq	$0, -56(%rbp)
	jne	.LBB14_33
# BB#32:                                # %if.then.60
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, -56(%rbp)
.LBB14_33:                              # %if.end.62
	cmpq	$0, -56(%rbp)
	jne	.LBB14_35
# BB#34:                                # %if.then.64
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
.LBB14_35:                              # %if.end.67
	cmpq	$0, -56(%rbp)
	jne	.LBB14_37
# BB#36:                                # %if.then.69
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB14_37:                              # %if.end.70
	cmpl	$0, -28(%rbp)
	je	.LBB14_39
# BB#38:                                # %if.then.72
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_save_a_copy_uri
	movq	%rax, -64(%rbp)
.LBB14_39:                              # %if.end.74
	cmpq	$0, -64(%rbp)
	jne	.LBB14_41
# BB#40:                                # %if.then.76
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -64(%rbp)
.LBB14_41:                              # %if.end.78
	cmpq	$0, -64(%rbp)
	jne	.LBB14_43
# BB#42:                                # %if.then.80
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_exported_uri
	movq	%rax, -64(%rbp)
.LBB14_43:                              # %if.end.82
	cmpq	$0, -64(%rbp)
	jne	.LBB14_45
# BB#44:                                # %if.then.84
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, -64(%rbp)
.LBB14_45:                              # %if.end.86
	cmpq	$0, -64(%rbp)
	jne	.LBB14_47
# BB#46:                                # %if.then.88
	callq	gimp_image_get_string_untitled
	movq	%rax, -64(%rbp)
.LBB14_47:                              # %if.end.90
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB14_49
# BB#48:                                # %if.then.93
	movabsq	$.L.str.30, %rax
	movq	%rax, -72(%rbp)
.LBB14_49:                              # %if.end.94
	jmp	.LBB14_75
.LBB14_50:                              # %if.else.95
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_exported_uri
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB14_52
# BB#51:                                # %if.then.98
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
.LBB14_52:                              # %if.end.101
	cmpq	$0, -56(%rbp)
	jne	.LBB14_54
# BB#53:                                # %if.then.103
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, -56(%rbp)
.LBB14_54:                              # %if.end.105
	cmpq	$0, -56(%rbp)
	jne	.LBB14_56
# BB#55:                                # %if.then.107
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -56(%rbp)
.LBB14_56:                              # %if.end.109
	cmpq	$0, -56(%rbp)
	jne	.LBB14_58
# BB#57:                                # %if.then.111
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
.LBB14_58:                              # %if.end.114
	cmpq	$0, -56(%rbp)
	jne	.LBB14_60
# BB#59:                                # %if.then.116
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
.LBB14_60:                              # %if.end.119
	cmpq	$0, -56(%rbp)
	jne	.LBB14_62
# BB#61:                                # %if.then.121
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB14_62:                              # %if.end.122
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_exported_uri
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB14_64
# BB#63:                                # %if.then.125
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -64(%rbp)
.LBB14_64:                              # %if.end.127
	cmpq	$0, -64(%rbp)
	jne	.LBB14_66
# BB#65:                                # %if.then.129
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, -64(%rbp)
.LBB14_66:                              # %if.end.131
	cmpq	$0, -64(%rbp)
	jne	.LBB14_68
# BB#67:                                # %if.then.133
	callq	gimp_image_get_string_untitled
	movq	%rax, -64(%rbp)
.LBB14_68:                              # %if.end.135
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_exported_uri
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB14_70
# BB#69:                                # %if.then.138
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, -72(%rbp)
.LBB14_70:                              # %if.end.140
	cmpq	$0, -72(%rbp)
	jne	.LBB14_72
# BB#71:                                # %if.then.142
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -72(%rbp)
.LBB14_72:                              # %if.end.145
	cmpq	$0, -72(%rbp)
	jne	.LBB14_74
# BB#73:                                # %if.then.147
	movabsq	$.L.str.32, %rax
	movq	%rax, -72(%rbp)
.LBB14_74:                              # %if.end.148
	jmp	.LBB14_75
.LBB14_75:                              # %if.end.149
	movq	-56(%rbp), %rdi
	callq	gimp_file_dialog_get_dirname_from_uri
	movq	%rax, -88(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB14_77
# BB#76:                                # %if.then.152
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	file_utils_uri_with_new_ext
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rdi
	callq	g_free
	jmp	.LBB14_78
.LBB14_77:                              # %if.else.156
	movq	-64(%rbp), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -96(%rbp)
.LBB14_78:                              # %if.end.158
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_folder_uri
	movq	-8(%rbp), %rsi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_name
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB14_79:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_file_dialog_set_save_image, .Lfunc_end14-gimp_file_dialog_set_save_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_get_documents_uri,@function
gimp_file_dialog_get_documents_uri:     # @gimp_file_dialog_get_documents_uri
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
	subq	$32, %rsp
	movl	$1, %edi
	callq	g_get_user_special_dir
	movabsq	$.L.str.50, %rcx
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	g_build_path
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	g_filename_to_uri
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_free
	cmpq	$0, -16(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	callq	g_get_home_dir
	movabsq	$.L.str.50, %rcx
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rcx, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	g_build_path
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	g_filename_to_uri
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_free
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_file_dialog_get_documents_uri, .Lfunc_end15-gimp_file_dialog_get_documents_uri
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_get_dirname_from_uri,@function
gimp_file_dialog_get_dirname_from_uri:  # @gimp_file_dialog_get_dirname_from_uri
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_path_get_dirname
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_file_dialog_get_dirname_from_uri, .Lfunc_end16-gimp_file_dialog_get_dirname_from_uri
	.cfi_endproc

	.globl	gimp_file_dialog_get_state
	.align	16, 0x90
	.type	gimp_file_dialog_get_state,@function
gimp_file_dialog_get_state:             # @gimp_file_dialog_get_state
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_file_dialog_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_get_state, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_15
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movl	$8, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filter
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB17_14
# BB#13:                                # %if.then.16
	movq	-32(%rbp), %rdi
	callq	gtk_file_filter_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB17_14:                              # %if.end.19
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB17_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_file_dialog_get_state, .Lfunc_end17-gimp_file_dialog_get_state
	.cfi_endproc

	.globl	gimp_file_dialog_set_state
	.align	16, 0x90
	.type	gimp_file_dialog_set_state,@function
gimp_file_dialog_set_state:             # @gimp_file_dialog_set_state
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_file_dialog_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_set_state, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_26
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB18_15
# BB#14:                                # %if.then.13
	jmp	.LBB18_16
.LBB18_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_set_state, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_26
.LBB18_16:                              # %if.end.15
	jmp	.LBB18_17
.LBB18_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_26
# BB#18:                                # %if.then.18
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_list_filters
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB18_19:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB18_25
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB18_19 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_file_filter_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_file_filter_get_name
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB18_23
# BB#21:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB18_19 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-72(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB18_23
# BB#22:                                # %if.then.35
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filter
	jmp	.LBB18_25
.LBB18_23:                              # %if.end.38
                                        #   in Loop: Header=BB18_19 Depth=1
	jmp	.LBB18_24
.LBB18_24:                              # %for.inc
                                        #   in Loop: Header=BB18_19 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB18_19
.LBB18_25:                              # %for.end
	movq	-48(%rbp), %rdi
	callq	g_slist_free
.LBB18_26:                              # %if.end.39
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_file_dialog_set_state, .Lfunc_end18-gimp_file_dialog_set_state
	.cfi_endproc

	.globl	gimp_file_dialog_state_destroy
	.align	16, 0x90
	.type	gimp_file_dialog_state_destroy,@function
gimp_file_dialog_state_destroy:         # @gimp_file_dialog_state_destroy
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB19_3
# BB#2:                                 # %if.then
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_state_destroy, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_7
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
# BB#6:                                 # %do.body.1
	movl	$8, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB19_7:                               # %do.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_file_dialog_state_destroy, .Lfunc_end19-gimp_file_dialog_state_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_class_init,@function
gimp_file_dialog_class_init:            # @gimp_file_dialog_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_file_dialog_response, %rsi
	movabsq	$gimp_file_dialog_delete_event, %rdi
	movabsq	$gimp_file_dialog_dispose, %rcx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 376(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 904(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_file_dialog_class_init, .Lfunc_end20-gimp_file_dialog_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_dispose,@function
gimp_file_dialog_dispose:               # @gimp_file_dialog_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_file_dialog_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	$0, 336(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_file_dialog_dispose, .Lfunc_end21-gimp_file_dialog_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_delete_event,@function
gimp_file_dialog_delete_event:          # @gimp_file_dialog_delete_event
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_file_dialog_delete_event, .Lfunc_end22-gimp_file_dialog_delete_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_response,@function
gimp_file_dialog_response:              # @gimp_file_dialog_response
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	je	.LBB23_7
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 344(%rax)
	je	.LBB23_7
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$1, 348(%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB23_6
# BB#3:                                 # %land.lhs.true.3
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 128(%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true.8
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_progress_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 132(%rax)
	je	.LBB23_6
# BB#5:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_cancel
.LBB23_6:                               # %if.end
	jmp	.LBB23_7
.LBB23_7:                               # %if.end.16
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_file_dialog_response, .Lfunc_end23-gimp_file_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_progress_start,@function
gimp_file_dialog_progress_start:        # @gimp_file_dialog_progress_start
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
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_progress_start
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	336(%rax), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
.LBB24_2:                               # %if.end
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_file_dialog_progress_start, .Lfunc_end24-gimp_file_dialog_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_progress_end,@function
gimp_file_dialog_progress_end:          # @gimp_file_dialog_progress_end
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_end
	movq	-16(%rbp), %rax
	movq	336(%rax), %rdi
	callq	gtk_widget_hide
.LBB25_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_file_dialog_progress_end, .Lfunc_end25-gimp_file_dialog_progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_progress_is_active,@function
gimp_file_dialog_progress_is_active:    # @gimp_file_dialog_progress_is_active
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_is_active
	movl	%eax, -4(%rbp)
	jmp	.LBB26_3
.LBB26_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB26_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_file_dialog_progress_is_active, .Lfunc_end26-gimp_file_dialog_progress_is_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_progress_set_text,@function
gimp_file_dialog_progress_set_text:     # @gimp_file_dialog_progress_set_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB27_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_progress_set_text
.LBB27_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_file_dialog_progress_set_text, .Lfunc_end27-gimp_file_dialog_progress_set_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_progress_set_value,@function
gimp_file_dialog_progress_set_value:    # @gimp_file_dialog_progress_set_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_progress_set_value
.LBB28_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_file_dialog_progress_set_value, .Lfunc_end28-gimp_file_dialog_progress_set_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_progress_get_value,@function
gimp_file_dialog_progress_get_value:    # @gimp_file_dialog_progress_get_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_get_value
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB29_3
.LBB29_2:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB29_3:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_file_dialog_progress_get_value, .Lfunc_end29-gimp_file_dialog_progress_get_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_progress_pulse,@function
gimp_file_dialog_progress_pulse:        # @gimp_file_dialog_progress_pulse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_pulse
.LBB30_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_file_dialog_progress_pulse, .Lfunc_end30-gimp_file_dialog_progress_pulse
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_progress_get_window_id,@function
gimp_file_dialog_progress_get_window_id: # @gimp_file_dialog_progress_get_window_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_get_native_id
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_file_dialog_progress_get_window_id, .Lfunc_end31-gimp_file_dialog_progress_get_window_id
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_selection_changed,@function
gimp_file_dialog_selection_changed:     # @gimp_file_dialog_selection_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	312(%rsi), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_thumb_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_uris
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_thumb_box_take_uris
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_file_dialog_selection_changed, .Lfunc_end32-gimp_file_dialog_selection_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_update_preview,@function
gimp_file_dialog_update_preview:        # @gimp_file_dialog_update_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	312(%rsi), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_thumb_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_preview_uri
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_thumb_box_take_uri
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_file_dialog_update_preview, .Lfunc_end33-gimp_file_dialog_update_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_process_procedure,@function
gimp_file_dialog_process_procedure:     # @gimp_file_dialog_process_procedure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	$0, 256(%rcx)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	jmp	.LBB34_26
.LBB34_2:                               # %if.end
	callq	gtk_file_filter_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_label
	movq	%rax, %rdi
	callq	g_string_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref_sink
	movq	-8(%rbp), %rdi
	movq	256(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB34_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB34_23
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_file_dialog_pattern_from_extension
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gtk_file_filter_add_pattern
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gtk_file_filter_add_pattern
	cmpq	$0, -32(%rbp)
	je	.LBB34_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gtk_file_filter_add_pattern
.LBB34_6:                               # %if.end.9
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-80(%rbp), %rdi
	callq	g_free
	cmpl	$0, -60(%rbp)
	jne	.LBB34_8
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB34_3 Depth=1
	movabsq	$.L.str.41, %rsi
	movq	-48(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB34_11
.LBB34_8:                               # %if.else
                                        #   in Loop: Header=BB34_3 Depth=1
	cmpl	$4, -60(%rbp)
	jg	.LBB34_10
# BB#9:                                 # %if.then.13
                                        #   in Loop: Header=BB34_3 Depth=1
	movabsq	$.L.str.42, %rsi
	movq	-48(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB34_10:                              # %if.end.15
                                        #   in Loop: Header=BB34_3 Depth=1
	jmp	.LBB34_11
.LBB34_11:                              # %if.end.16
                                        #   in Loop: Header=BB34_3 Depth=1
	cmpl	$4, -60(%rbp)
	jge	.LBB34_13
# BB#12:                                # %if.then.18
                                        #   in Loop: Header=BB34_3 Depth=1
	movabsq	$.L.str.43, %rsi
	movq	-48(%rbp), %rdi
	callq	g_string_append
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_string_append
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB34_16
.LBB34_13:                              # %if.else.21
                                        #   in Loop: Header=BB34_3 Depth=1
	cmpl	$4, -60(%rbp)
	jne	.LBB34_15
# BB#14:                                # %if.then.23
                                        #   in Loop: Header=BB34_3 Depth=1
	movabsq	$.L.str.44, %rsi
	movq	-48(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB34_15:                              # %if.end.25
                                        #   in Loop: Header=BB34_3 Depth=1
	jmp	.LBB34_16
.LBB34_16:                              # %if.end.26
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB34_18
# BB#17:                                # %if.then.28
                                        #   in Loop: Header=BB34_3 Depth=1
	movabsq	$.L.str.45, %rsi
	movq	-48(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB34_18:                              # %if.end.30
                                        #   in Loop: Header=BB34_3 Depth=1
	jmp	.LBB34_19
.LBB34_19:                              # %for.inc
                                        #   in Loop: Header=BB34_3 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB34_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB34_22
.LBB34_21:                              # %cond.false
                                        #   in Loop: Header=BB34_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB34_22
.LBB34_22:                              # %cond.end
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB34_3
.LBB34_23:                              # %for.end
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	callq	gtk_file_filter_set_name
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	g_string_free
	cmpq	$0, -16(%rbp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	je	.LBB34_25
# BB#24:                                # %if.then.36
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB34_25:                              # %if.end.38
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB34_26:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_file_dialog_process_procedure, .Lfunc_end34-gimp_file_dialog_process_procedure
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_pattern_from_extension,@function
gimp_file_dialog_pattern_from_extension: # @gimp_file_dialog_pattern_from_extension
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB35_3
# BB#2:                                 # %if.then
	jmp	.LBB35_4
.LBB35_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_dialog_pattern_from_extension, %rsi
	movabsq	$.L.str.46, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB35_10
.LBB35_4:                               # %if.end
	jmp	.LBB35_5
.LBB35_5:                               # %do.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	shll	$2, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.43, %ecx
	movl	%ecx, %esi
	callq	strcpy
	movl	$0, -40(%rbp)
	movq	-24(%rbp), %rsi
	addq	$2, %rsi
	movq	%rsi, -32(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB35_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB35_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB35_6 Depth=1
	movq	-32(%rbp), %rax
	movb	$91, (%rax)
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edi
	callq	g_ascii_tolower
	movq	-32(%rbp), %rcx
	movb	%al, 1(%rcx)
	movslq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %edi
	callq	g_ascii_toupper
	movq	-32(%rbp), %rcx
	movb	%al, 2(%rcx)
	movq	-32(%rbp), %rcx
	movb	$93, 3(%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB35_6 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB35_6
.LBB35_9:                               # %for.end
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB35_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_file_dialog_pattern_from_extension, .Lfunc_end35-gimp_file_dialog_pattern_from_extension
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_dialog_proc_changed,@function
gimp_file_dialog_proc_changed:          # @gimp_file_dialog_proc_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_file_proc_view_get_proc
	movq	-16(%rbp), %rsi
	movq	%rax, 272(%rsi)
	cmpq	$0, -32(%rbp)
	je	.LBB36_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.48, %rdi
	callq	gettext
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_expander_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_expander_set_label
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB36_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gtk_file_chooser_get_action
	cmpl	$1, %eax
	jne	.LBB36_37
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB36_36
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB36_36
# BB#5:                                 # %if.then.12
	movq	-24(%rbp), %rdi
	callq	gtk_file_chooser_get_uri
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB36_35
# BB#6:                                 # %land.lhs.true.15
	movq	-56(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB36_35
# BB#7:                                 # %if.then.18
	movl	$46, %esi
	movq	-56(%rbp), %rdi
	callq	strrchr
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB36_10
# BB#8:                                 # %land.lhs.true.21
	movl	$47, %esi
	movq	-56(%rbp), %rdi
	callq	strrchr
	cmpq	-64(%rbp), %rax
	jbe	.LBB36_10
# BB#9:                                 # %if.then.24
	movq	$0, -64(%rbp)
.LBB36_10:                              # %if.end.25
	cmpq	$0, -64(%rbp)
	je	.LBB36_30
# BB#11:                                # %land.lhs.true.27
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB36_30
# BB#12:                                # %if.then.29
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB36_13:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_16 Depth 2
	cmpq	$0, -72(%rbp)
	je	.LBB36_29
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB36_13 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB36_24
# BB#15:                                # %if.then.33
                                        #   in Loop: Header=BB36_13 Depth=1
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
.LBB36_16:                              # %while.cond
                                        #   Parent Loop BB36_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	cmpq	-56(%rbp), %rdx
	movb	%cl, -121(%rbp)         # 1-byte Spill
	jbe	.LBB36_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB36_16 Depth=2
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	setne	%dl
	movb	%dl, -121(%rbp)         # 1-byte Spill
.LBB36_18:                              # %land.end
                                        #   in Loop: Header=BB36_16 Depth=2
	movb	-121(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB36_19
	jmp	.LBB36_20
.LBB36_19:                              # %while.body
                                        #   in Loop: Header=BB36_16 Depth=2
	movq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB36_16
.LBB36_20:                              # %while.end
                                        #   in Loop: Header=BB36_13 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB36_23
# BB#21:                                # %land.lhs.true.40
                                        #   in Loop: Header=BB36_13 Depth=1
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB36_23
# BB#22:                                # %if.then.44
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB36_29
.LBB36_23:                              # %if.end.45
                                        #   in Loop: Header=BB36_13 Depth=1
	jmp	.LBB36_24
.LBB36_24:                              # %if.end.46
                                        #   in Loop: Header=BB36_13 Depth=1
	jmp	.LBB36_25
.LBB36_25:                              # %for.inc
                                        #   in Loop: Header=BB36_13 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB36_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB36_13 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB36_28
.LBB36_27:                              # %cond.false
                                        #   in Loop: Header=BB36_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB36_28
.LBB36_28:                              # %cond.end
                                        #   in Loop: Header=BB36_13 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB36_13
.LBB36_29:                              # %for.end
	jmp	.LBB36_30
.LBB36_30:                              # %if.end.48
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB36_34
# BB#31:                                # %if.then.51
	movq	-56(%rbp), %rdi
	callq	g_string_new
	movq	%rax, -96(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB36_33
# BB#32:                                # %if.then.54
	movq	-96(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_string_truncate
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB36_33:                              # %if.end.56
	movabsq	$.L.str.49, %rsi
	movq	-96(%rbp), %rdi
	callq	g_string_append
	movq	-96(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	256(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_string_append
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_set_uri
	movq	-96(%rbp), %rsi
	movq	(%rsi), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	file_utils_uri_display_basename
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gtk_file_chooser_set_current_name
	movq	-104(%rbp), %rdi
	callq	g_free
	movl	$1, %esi
	movq	-96(%rbp), %rdi
	callq	g_string_free
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB36_34:                              # %if.end.65
	jmp	.LBB36_35
.LBB36_35:                              # %if.end.66
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB36_36:                              # %if.end.67
	jmp	.LBB36_37
.LBB36_37:                              # %if.end.68
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_file_dialog_proc_changed, .Lfunc_end36-gimp_file_dialog_proc_changed
	.cfi_endproc

	.type	gimp_file_dialog_get_type.g_define_type_id__volatile,@object # @gimp_file_dialog_get_type.g_define_type_id__volatile
	.local	gimp_file_dialog_get_type.g_define_type_id__volatile
	.comm	gimp_file_dialog_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFileDialog"
	.size	.L.str, 15

	.type	gimp_file_dialog_get_type.g_implement_interface_info,@object # @gimp_file_dialog_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_file_dialog_get_type.g_implement_interface_info:
	.quad	gimp_file_dialog_progress_iface_init
	.quad	0
	.quad	0
	.size	gimp_file_dialog_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_file_dialog_new,@object # @__func__.gimp_file_dialog_new
.L__func__.gimp_file_dialog_new:
	.asciz	"gimp_file_dialog_new"
	.size	.L__func__.gimp_file_dialog_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"title != NULL"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"role != NULL"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"stock_id != NULL"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"help_id != NULL"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Automatically Detected"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-file-open-by-extension"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"file-uri-load"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"By Extension"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-file-save-by-extension"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"file-uri-save"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.13, 45

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimpfiledialog.c"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"title"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"role"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"action"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"local-only"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"do-overwrite-confirmation"
	.size	.L.str.19, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gtk-cancel"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gtk-help"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-dialog-help-id"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"clicked"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-dialog-help-button"
	.size	.L.str.24, 24

	.type	.L__func__.gimp_file_dialog_set_sensitive,@object # @__func__.gimp_file_dialog_set_sensitive
.L__func__.gimp_file_dialog_set_sensitive:
	.asciz	"gimp_file_dialog_set_sensitive"
	.size	.L__func__.gimp_file_dialog_set_sensitive, 31

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"GIMP_IS_FILE_DIALOG (dialog)"
	.size	.L.str.25, 29

	.type	.L__func__.gimp_file_dialog_set_file_proc,@object # @__func__.gimp_file_dialog_set_file_proc
.L__func__.gimp_file_dialog_set_file_proc:
	.asciz	"gimp_file_dialog_set_file_proc"
	.size	.L__func__.gimp_file_dialog_set_file_proc, 31

	.type	.L__func__.gimp_file_dialog_set_open_image,@object # @__func__.gimp_file_dialog_set_open_image
.L__func__.gimp_file_dialog_set_open_image:
	.asciz	"gimp_file_dialog_set_open_image"
	.size	.L__func__.gimp_file_dialog_set_open_image, 32

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"image == NULL || GIMP_IS_IMAGE (image)"
	.size	.L.str.26, 39

	.type	.L__func__.gimp_file_dialog_set_save_image,@object # @__func__.gimp_file_dialog_set_save_image
.L__func__.gimp_file_dialog_set_save_image:
	.asciz	"gimp_file_dialog_set_save_image"
	.size	.L__func__.gimp_file_dialog_set_save_image, 32

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.27, 22

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-image-source-uri"
	.size	.L.str.28, 22

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-file-save-last-uri"
	.size	.L.str.29, 24

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"file:///we/only/care/about/extension.xcf"
	.size	.L.str.30, 41

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-file-export-last-uri"
	.size	.L.str.31, 26

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"file:///we/only/care/about/extension.png"
	.size	.L.str.32, 41

	.type	.L__func__.gimp_file_dialog_get_state,@object # @__func__.gimp_file_dialog_get_state
.L__func__.gimp_file_dialog_get_state:
	.asciz	"gimp_file_dialog_get_state"
	.size	.L__func__.gimp_file_dialog_get_state, 27

	.type	.L__func__.gimp_file_dialog_set_state,@object # @__func__.gimp_file_dialog_set_state
.L__func__.gimp_file_dialog_set_state:
	.asciz	"gimp_file_dialog_set_state"
	.size	.L__func__.gimp_file_dialog_set_state, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"state != NULL"
	.size	.L.str.33, 14

	.type	.L__func__.gimp_file_dialog_state_destroy,@object # @__func__.gimp_file_dialog_state_destroy
.L__func__.gimp_file_dialog_state_destroy:
	.asciz	"gimp_file_dialog_state_destroy"
	.size	.L__func__.gimp_file_dialog_state_destroy, 31

	.type	gimp_file_dialog_parent_class,@object # @gimp_file_dialog_parent_class
	.local	gimp_file_dialog_parent_class
	.comm	gimp_file_dialog_parent_class,8,8
	.type	GimpFileDialog_private_offset,@object # @GimpFileDialog_private_offset
	.local	GimpFileDialog_private_offset
	.comm	GimpFileDialog_private_offset,4,4
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"selection-changed"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"update-preview"
	.size	.L.str.35, 15

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"All files"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"*"
	.size	.L.str.37, 2

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"All images"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"All XCF images"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"All export images"
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	" ("
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	", "
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"*."
	.size	.L.str.43, 3

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"..."
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	")"
	.size	.L.str.45, 2

	.type	.L__func__.gimp_file_dialog_pattern_from_extension,@object # @__func__.gimp_file_dialog_pattern_from_extension
.L__func__.gimp_file_dialog_pattern_from_extension:
	.asciz	"gimp_file_dialog_pattern_from_extension"
	.size	.L__func__.gimp_file_dialog_pattern_from_extension, 40

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"extension != NULL"
	.size	.L.str.46, 18

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"changed"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Select File _Type (%s)"
	.size	.L.str.48, 23

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"."
	.size	.L.str.49, 2

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"/"
	.size	.L.str.50, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
