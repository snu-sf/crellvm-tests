	.text
	.file	"channel-options-dialog.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4636737291354636288     # double 100
.LCPI0_2:
	.quad	4607182418800017408     # double 1
.LCPI0_3:
	.quad	4621819117588971520     # double 10
	.text
	.globl	channel_options_dialog_new
	.align	16, 0x90
	.type	channel_options_dialog_new,@function
channel_options_dialog_new:             # @channel_options_dialog_new
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
	subq	$600, %rsp              # imm = 0x258
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
	movl	72(%rbp), %eax
	movq	64(%rbp), %r10
	movq	56(%rbp), %r11
	movq	48(%rbp), %rbx
	movq	40(%rbp), %r14
	movq	32(%rbp), %r15
	movq	24(%rbp), %r12
	movq	16(%rbp), %r13
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%r13, -104(%rbp)
	movq	%r12, -112(%rbp)
	movq	%r15, -120(%rbp)
	movq	%r14, -128(%rbp)
	movq	%rbx, -136(%rbp)
	movq	%r11, -144(%rbp)
	movq	%r10, -152(%rbp)
	movl	%eax, -156(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -228(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -228(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.channel_options_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_97
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -64(%rbp)
	je	.LBB0_22
# BB#14:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -248(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.21
	movl	$0, -252(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.22
	movq	-240(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.25
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-248(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.29
	movl	$1, -252(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.30
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -252(%rbp)
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.33
	movl	-252(%rbp), %eax
	movl	%eax, -256(%rbp)
	cmpl	$0, -256(%rbp)
	je	.LBB0_23
.LBB0_22:                               # %if.then.36
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.channel_options_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_97
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.39
	jmp	.LBB0_26
.LBB0_26:                               # %do.body.40
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -272(%rbp)
	cmpq	$0, -264(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.49
	movl	$0, -276(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.50
	movq	-264(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_31
# BB#29:                                # %land.lhs.true.53
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-272(%rbp), %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.57
	movl	$1, -276(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.58
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -276(%rbp)
.LBB0_32:                               # %if.end.60
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.61
	movl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	cmpl	$0, -280(%rbp)
	je	.LBB0_35
# BB#34:                                # %if.then.64
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.channel_options_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_97
.LBB0_36:                               # %if.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %do.end.67
	jmp	.LBB0_38
.LBB0_38:                               # %do.body.68
	movq	-80(%rbp), %rax
	movq	%rax, -288(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -296(%rbp)
	cmpq	$0, -288(%rbp)
	jne	.LBB0_40
# BB#39:                                # %if.then.77
	movl	$0, -300(%rbp)
	jmp	.LBB0_45
.LBB0_40:                               # %if.else.78
	movq	-288(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_43
# BB#41:                                # %land.lhs.true.81
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB0_43
# BB#42:                                # %if.then.85
	movl	$1, -300(%rbp)
	jmp	.LBB0_44
.LBB0_43:                               # %if.else.86
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -300(%rbp)
.LBB0_44:                               # %if.end.88
	jmp	.LBB0_45
.LBB0_45:                               # %if.end.89
	movl	-300(%rbp), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	je	.LBB0_47
# BB#46:                                # %if.then.92
	jmp	.LBB0_48
.LBB0_47:                               # %if.else.93
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.channel_options_dialog_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_97
.LBB0_48:                               # %if.end.94
	jmp	.LBB0_49
.LBB0_49:                               # %do.end.95
	jmp	.LBB0_50
.LBB0_50:                               # %do.body.96
	cmpq	$0, -88(%rbp)
	je	.LBB0_52
# BB#51:                                # %if.then.98
	jmp	.LBB0_53
.LBB0_52:                               # %if.else.99
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.channel_options_dialog_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_97
.LBB0_53:                               # %if.end.100
	jmp	.LBB0_54
.LBB0_54:                               # %do.end.101
	jmp	.LBB0_55
.LBB0_55:                               # %do.body.102
	cmpq	$0, -104(%rbp)
	je	.LBB0_57
# BB#56:                                # %if.then.104
	jmp	.LBB0_58
.LBB0_57:                               # %if.else.105
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.channel_options_dialog_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_97
.LBB0_58:                               # %if.end.106
	jmp	.LBB0_59
.LBB0_59:                               # %do.end.107
	jmp	.LBB0_60
.LBB0_60:                               # %do.body.108
	cmpq	$0, -112(%rbp)
	je	.LBB0_62
# BB#61:                                # %if.then.110
	jmp	.LBB0_63
.LBB0_62:                               # %if.else.111
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.channel_options_dialog_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_97
.LBB0_63:                               # %if.end.112
	jmp	.LBB0_64
.LBB0_64:                               # %do.end.113
	jmp	.LBB0_65
.LBB0_65:                               # %do.body.114
	cmpq	$0, -120(%rbp)
	je	.LBB0_67
# BB#66:                                # %if.then.116
	jmp	.LBB0_68
.LBB0_67:                               # %if.else.117
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.channel_options_dialog_new, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_97
.LBB0_68:                               # %if.end.118
	jmp	.LBB0_69
.LBB0_69:                               # %do.end.119
	jmp	.LBB0_70
.LBB0_70:                               # %do.body.120
	cmpq	$0, -128(%rbp)
	je	.LBB0_72
# BB#71:                                # %if.then.122
	jmp	.LBB0_73
.LBB0_72:                               # %if.else.123
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.channel_options_dialog_new, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_97
.LBB0_73:                               # %if.end.124
	jmp	.LBB0_74
.LBB0_74:                               # %do.end.125
	jmp	.LBB0_75
.LBB0_75:                               # %do.body.126
	cmpq	$0, -136(%rbp)
	je	.LBB0_77
# BB#76:                                # %if.then.128
	jmp	.LBB0_78
.LBB0_77:                               # %if.else.129
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.channel_options_dialog_new, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_97
.LBB0_78:                               # %if.end.130
	jmp	.LBB0_79
.LBB0_79:                               # %do.end.131
	jmp	.LBB0_80
.LBB0_80:                               # %do.body.132
	cmpq	$0, -144(%rbp)
	je	.LBB0_82
# BB#81:                                # %if.then.134
	jmp	.LBB0_83
.LBB0_82:                               # %if.else.135
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.channel_options_dialog_new, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_97
.LBB0_83:                               # %if.end.136
	jmp	.LBB0_84
.LBB0_84:                               # %do.end.137
	jmp	.LBB0_85
.LBB0_85:                               # %do.body.138
	cmpq	$0, -152(%rbp)
	je	.LBB0_87
# BB#86:                                # %if.then.140
	jmp	.LBB0_88
.LBB0_87:                               # %if.else.141
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.channel_options_dialog_new, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_97
.LBB0_88:                               # %if.end.142
	jmp	.LBB0_89
.LBB0_89:                               # %do.end.143
	movl	$56, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movl	$2, %edx
	movl	$48, %ecx
	movl	$64, %r8d
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-64(%rbp), %rax
	movq	-168(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-144(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_color_panel_new
	movq	-168(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_color_panel_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_panel_set_context
	cmpq	$0, -64(%rbp)
	je	.LBB0_91
# BB#90:                                # %if.then.153
	movq	-64(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -176(%rbp)
	jmp	.LBB0_92
.LBB0_91:                               # %if.else.156
	movq	-56(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -176(%rbp)
.LBB0_92:                               # %if.end.159
	movabsq	$gimp_standard_help_func, %rax
	movabsq	$.L.str.13, %rcx
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.14, %rsi
	movl	$4294967291, %edi       # imm = 0xFFFFFFFB
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-176(%rbp), %r10
	movq	-72(%rbp), %r11
	movq	-104(%rbp), %rbx
	movq	-112(%rbp), %r14
	movq	-120(%rbp), %r8
	movq	-128(%rbp), %r15
	movq	-80(%rbp), %r12
	movq	-136(%rbp), %r13
	movl	%edi, -332(%rbp)        # 4-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movl	%edx, -348(%rbp)        # 4-byte Spill
	movq	%rbx, %rdx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movq	%r14, %rcx
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	%r12, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%r13, 16(%rsp)
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$-6, 32(%rsp)
	movq	-344(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	movl	$-5, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	callq	gimp_viewable_dialog_new
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$channel_options_dialog_free, %rcx
	movq	-168(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_weak_ref
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-184(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-192(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-192(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	cmpq	$0, -96(%rbp)
	cmovnel	%r8d, %ecx
	movl	%ecx, %edi
	callq	gtk_table_new
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-200(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-192(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-200(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movl	-436(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-200(%rbp), %rdi
	callq	gtk_widget_show
	cmpq	$0, -96(%rbp)
	je	.LBB0_94
# BB#93:                                # %if.then.187
	callq	gtk_entry_new
	movq	-168(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	movq	-200(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-168(%rbp), %rcx
	movq	8(%rcx), %r8
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-168(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
.LBB0_94:                               # %if.end.200
	movq	-200(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI0_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	cmpq	$0, -96(%rbp)
	movl	%ecx, %r10d
	cmovnel	%edx, %r10d
	movq	-152(%rbp), %rdi
	movq	-88(%rbp), %r11
	movaps	%xmm1, %xmm2
	mulsd	24(%r11), %xmm2
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%r10d, %edx
	movq	-496(%rbp), %rcx        # 8-byte Reload
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-512(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -520(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-520(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-512(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-512(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.16, %rsi
	movabsq	$channel_options_opacity_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-168(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-528(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-184(%rbp), %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-168(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-168(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rsi
	movabsq	$channel_options_color_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-208(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	cmpl	$0, -156(%rbp)
	movq	%rax, -552(%rbp)        # 8-byte Spill
	je	.LBB0_96
# BB#95:                                # %if.then.215
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	-168(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-192(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	movl	-564(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-168(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
.LBB0_96:                               # %if.end.222
	movq	-168(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_97:                               # %return
	movq	-48(%rbp), %rax
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	channel_options_dialog_new, .Lfunc_end0-channel_options_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	channel_options_dialog_free,@function
channel_options_dialog_free:            # @channel_options_dialog_free
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
	movl	$56, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	channel_options_dialog_free, .Lfunc_end1-channel_options_dialog_free
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	channel_options_opacity_update,@function
channel_options_opacity_update:         # @channel_options_opacity_update
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	leaq	-48(%rbp), %rdi
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	gimp_rgb_set_alpha
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	channel_options_opacity_update, .Lfunc_end2-channel_options_opacity_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	channel_options_color_changed,@function
channel_options_color_changed:          # @channel_options_color_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_color_button_get_color
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	mulsd	-32(%rbp), %xmm0
	callq	gtk_adjustment_set_value
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	channel_options_color_changed, .Lfunc_end3-channel_options_color_changed
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.channel_options_dialog_new,@object # @__func__.channel_options_dialog_new
.L__func__.channel_options_dialog_new:
	.asciz	"channel_options_dialog_new"
	.size	.L__func__.channel_options_dialog_new, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"channel == NULL || GIMP_IS_CHANNEL (channel)"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GTK_IS_WIDGET (parent)"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"channel_color != NULL"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"title != NULL"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"role != NULL"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"stock_id != NULL"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"desc != NULL"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"help_id != NULL"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"color_label != NULL"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"opacity_label != NULL"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gtk-cancel"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gtk-ok"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Channel _name:"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"value-changed"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"color-changed"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Initialize from _selection"
	.size	.L.str.18, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
