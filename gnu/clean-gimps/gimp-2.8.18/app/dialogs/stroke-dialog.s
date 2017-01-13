	.text
	.file	"stroke-dialog.bc"
	.globl	stroke_dialog_new
	.align	16, 0x90
	.type	stroke_dialog_new,@function
stroke_dialog_new:                      # @stroke_dialog_new
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
	subq	$712, %rsp              # imm = 0x2C8
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
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -196(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -196(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.stroke_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_50
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -216(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -220(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-208(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-216(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -220(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -220(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-220(%rbp), %eax
	movl	%eax, -224(%rbp)
	cmpl	$0, -224(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.stroke_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_50
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpq	$0, -80(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.41
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.stroke_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_50
.LBB0_28:                               # %if.end.43
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.44
	jmp	.LBB0_30
.LBB0_30:                               # %do.body.45
	cmpq	$0, -88(%rbp)
	je	.LBB0_32
# BB#31:                                # %if.then.47
	jmp	.LBB0_33
.LBB0_32:                               # %if.else.48
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.stroke_dialog_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_50
.LBB0_33:                               # %if.end.49
	jmp	.LBB0_34
.LBB0_34:                               # %do.end.50
	jmp	.LBB0_35
.LBB0_35:                               # %do.body.51
	cmpq	$0, -96(%rbp)
	je	.LBB0_44
# BB#36:                                # %lor.lhs.false
	movq	-96(%rbp), %rax
	movq	%rax, -232(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -240(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.LBB0_38
# BB#37:                                # %if.then.61
	movl	$0, -244(%rbp)
	jmp	.LBB0_43
.LBB0_38:                               # %if.else.62
	movq	-232(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_41
# BB#39:                                # %land.lhs.true.65
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-240(%rbp), %rax
	jne	.LBB0_41
# BB#40:                                # %if.then.69
	movl	$1, -244(%rbp)
	jmp	.LBB0_42
.LBB0_41:                               # %if.else.70
	movq	-232(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -244(%rbp)
.LBB0_42:                               # %if.end.72
	jmp	.LBB0_43
.LBB0_43:                               # %if.end.73
	movl	-244(%rbp), %eax
	movl	%eax, -248(%rbp)
	cmpl	$0, -248(%rbp)
	je	.LBB0_45
.LBB0_44:                               # %if.then.76
	jmp	.LBB0_46
.LBB0_45:                               # %if.else.77
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.stroke_dialog_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_50
.LBB0_46:                               # %if.end.78
	jmp	.LBB0_47
.LBB0_47:                               # %do.end.79
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_image
	movl	$1, %edx
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_stroke_options_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB0_49
# BB#48:                                # %if.then.86
	movl	$80, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB0_49:                               # %if.end.90
	movq	-56(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %r8
	movq	%r8, -352(%rbp)         # 8-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.7, %rcx
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.9, %rsi
	movl	$1, %r9d
	movabsq	$.L.str.10, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	movq	-96(%rbp), %r14
	movq	-88(%rbp), %r15
	movq	-80(%rbp), %r12
	movq	-360(%rbp), %r13        # 8-byte Reload
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r13, %rdi
	movq	-368(%rbp), %r13        # 8-byte Reload
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%r13, %rsi
	movq	-376(%rbp), %r13        # 8-byte Reload
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%r13, %rdx
	movq	-352(%rbp), %r13        # 8-byte Reload
	movq	%r8, -408(%rbp)         # 8-byte Spill
	movq	%r13, %r8
	movl	%r9d, -412(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movq	%r14, (%rsp)
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-392(%rbp), %r14        # 8-byte Reload
	movq	%r14, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	-384(%rbp), %r15        # 8-byte Reload
	movq	%r15, 40(%rsp)
	movl	$-6, 48(%rsp)
	movq	%r12, 56(%rsp)
	movl	$-5, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, %al
	movl	%r11d, -416(%rbp)       # 4-byte Spill
	movl	%r10d, -420(%rbp)       # 4-byte Spill
	callq	gimp_viewable_dialog_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-128(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movabsq	$.L.str.11, %rsi
	movabsq	$stroke_dialog_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rdi
	movq	-128(%rbp), %r14
	movq	%rax, %rdx
	movq	%r14, %rcx
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-128(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movabsq	$g_object_unref, %rcx
	movq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data_full
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-128(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_radio_box_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdi
	callq	g_object_ref
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movq	-168(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_object_ref
	movq	%rax, -160(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref_sink
	movq	-144(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	g_object_unref
	callq	pango_font_description_new
	movl	$700, %esi              # imm = 0x2BC
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rdi
	callq	pango_font_description_set_weight
	movq	-152(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	-256(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_modify_font
	movq	-160(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	-256(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_modify_font
	movq	-256(%rbp), %rdi
	callq	pango_font_description_free
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_frame_new
	movq	%rax, -176(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	movl	-524(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-176(%rbp), %rdi
	callq	gtk_widget_show
	movq	-176(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	leaq	-272(%rbp), %rsi
	leaq	-280(%rbp), %rdx
	movq	-120(%rbp), %rdi
	callq	gimp_image_get_resolution
	xorl	%esi, %esi
	movq	-104(%rbp), %rdi
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_stroke_editor_new
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-264(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-264(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rcx
	movl	$2, %r8d
	movq	-152(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_bind_property
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_frame_new
	movq	%rax, -176(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-176(%rbp), %rdi
	callq	gtk_widget_show
	movq	-176(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -288(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-288(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-288(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rcx
	movl	$2, %r8d
	movq	-160(%rbp), %rax
	movq	-288(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-584(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -296(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-296(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-296(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -304(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-304(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	movl	-612(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-304(%rbp), %rdi
	callq	gtk_widget_show
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	344(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$16, %edx
	xorl	%ecx, %ecx
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_combo_box_new
	movq	%rax, -312(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-312(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-312(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	-312(%rbp), %rdi
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-648(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.19, %rsi
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -320(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-320(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -668(%rbp)        # 4-byte Spill
	movl	-668(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-320(%rbp), %rdi
	callq	gtk_widget_show
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_50:                               # %return
	movq	-48(%rbp), %rax
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	stroke_dialog_new, .Lfunc_end0-stroke_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	stroke_dialog_response,@function
stroke_dialog_response:                 # @stroke_dialog_response
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$80, %esi
	movl	%esi, %edi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	g_type_check_instance_cast
	movl	$.L.str.12, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	g_type_check_instance_cast
	movl	$.L.str.7, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	g_type_check_instance_cast
	movl	$.L.str.18, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_viewable_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	264(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$-5, %r8d
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	je	.LBB1_2
	jmp	.LBB1_15
.LBB1_15:                               # %entry
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jne	.LBB1_13
	jmp	.LBB1_1
.LBB1_1:                                # %sw.bb
	movq	-56(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_select_item
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB1_14
.LBB1_2:                                # %sw.bb.18
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -80(%rbp)
	movq	$0, -96(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB1_14
.LBB1_4:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.26
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %if.else
	movl	$1, %edx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_stroke_options_new
	movq	%rax, -88(%rbp)
.LBB1_7:                                # %if.end.30
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movabsq	$g_object_unref, %rcx
	movq	-88(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-216(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data_full
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$1, %r9d
	leaq	-96(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	$0, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_item_stroke
	cmpl	$0, %eax
	jne	.LBB1_12
# BB#8:                                 # %if.then.38
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	cmpq	$0, -96(%rbp)
	movq	%rax, -232(%rbp)        # 8-byte Spill
	je	.LBB1_10
# BB#9:                                 # %cond.true
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %cond.false
	movabsq	$.L.str.22, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB1_11
.LBB1_11:                               # %cond.end
	movq	-240(%rbp), %rax        # 8-byte Reload
	movl	$1, %edx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	leaq	-96(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB1_14
.LBB1_12:                               # %if.end.42
	movq	-48(%rbp), %rdi
	callq	gimp_image_flush
.LBB1_13:                               # %sw.default
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB1_14:                               # %sw.epilog
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end1:
	.size	stroke_dialog_response, .Lfunc_end1-stroke_dialog_response
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.stroke_dialog_new,@object # @__func__.stroke_dialog_new
.L__func__.stroke_dialog_new:
	.asciz	"stroke_dialog_new"
	.size	.L__func__.stroke_dialog_new, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_ITEM (item)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"stock_id != NULL"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"help_id != NULL"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"parent == NULL || GTK_IS_WIDGET (parent)"
	.size	.L.str.5, 41

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"saved-stroke-options"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-stroke-options"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Choose Stroke Style"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-reset"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-cancel"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"response"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-item"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"method"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"radio-button"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"active"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"sensitive"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Paint tool:"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-tool-menu"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"emulate-brush-dynamics"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_Emulate brush dynamics"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"There is no active layer or channel to stroke to."
	.size	.L.str.21, 50

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"NULL"
	.size	.L.str.22, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
