	.text
	.file	"vectors-options-dialog.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1056964608              # float 0.5
	.text
	.globl	vectors_options_dialog_new
	.align	16, 0x90
	.type	vectors_options_dialog_new,@function
vectors_options_dialog_new:             # @vectors_options_dialog_new
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
	subq	$472, %rsp              # imm = 0x1D8
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
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%rbx, -104(%rbp)
	movq	%r11, -112(%rbp)
	movq	%r10, -120(%rbp)
	movq	%rax, -128(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -188(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -188(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.vectors_options_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_78
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -64(%rbp)
	je	.LBB0_22
# BB#14:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.21
	movl	$0, -212(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.22
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.25
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.29
	movl	$1, -212(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.30
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.33
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB0_23
.LBB0_22:                               # %if.then.36
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.vectors_options_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_78
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.39
	jmp	.LBB0_26
.LBB0_26:                               # %do.body.40
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.49
	movl	$0, -236(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.50
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_31
# BB#29:                                # %land.lhs.true.53
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.57
	movl	$1, -236(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.58
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB0_32:                               # %if.end.60
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.61
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB0_35
# BB#34:                                # %if.then.64
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.vectors_options_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_78
.LBB0_36:                               # %if.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %do.end.67
	jmp	.LBB0_38
.LBB0_38:                               # %do.body.68
	movq	-80(%rbp), %rax
	movq	%rax, -248(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.LBB0_40
# BB#39:                                # %if.then.77
	movl	$0, -260(%rbp)
	jmp	.LBB0_45
.LBB0_40:                               # %if.else.78
	movq	-248(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_43
# BB#41:                                # %land.lhs.true.81
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-256(%rbp), %rax
	jne	.LBB0_43
# BB#42:                                # %if.then.85
	movl	$1, -260(%rbp)
	jmp	.LBB0_44
.LBB0_43:                               # %if.else.86
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -260(%rbp)
.LBB0_44:                               # %if.end.88
	jmp	.LBB0_45
.LBB0_45:                               # %if.end.89
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB0_47
# BB#46:                                # %if.then.92
	jmp	.LBB0_48
.LBB0_47:                               # %if.else.93
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.vectors_options_dialog_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_78
.LBB0_48:                               # %if.end.94
	jmp	.LBB0_49
.LBB0_49:                               # %do.end.95
	jmp	.LBB0_50
.LBB0_50:                               # %do.body.96
	cmpq	$0, -96(%rbp)
	je	.LBB0_52
# BB#51:                                # %if.then.98
	jmp	.LBB0_53
.LBB0_52:                               # %if.else.99
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.vectors_options_dialog_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_78
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
	movabsq	$.L__func__.vectors_options_dialog_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_78
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
	movabsq	$.L__func__.vectors_options_dialog_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_78
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
	movabsq	$.L__func__.vectors_options_dialog_new, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_78
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
	movabsq	$.L__func__.vectors_options_dialog_new, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_78
.LBB0_73:                               # %if.end.124
	jmp	.LBB0_74
.LBB0_74:                               # %do.end.125
	movl	$32, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	-136(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-64(%rbp), %rax
	movq	-136(%rbp), %rdi
	movq	%rax, 24(%rdi)
	cmpq	$0, -64(%rbp)
	je	.LBB0_76
# BB#75:                                # %if.then.130
	movq	-64(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -144(%rbp)
	jmp	.LBB0_77
.LBB0_76:                               # %if.else.133
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -144(%rbp)
.LBB0_77:                               # %if.end.136
	movabsq	$gimp_standard_help_func, %rax
	movabsq	$.L.str.10, %rcx
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.11, %rsi
	movl	$4294967291, %edi       # imm = 0xFFFFFFFB
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-144(%rbp), %r10
	movq	-72(%rbp), %r11
	movq	-96(%rbp), %rbx
	movq	-104(%rbp), %r14
	movq	-112(%rbp), %r8
	movq	-120(%rbp), %r15
	movq	-80(%rbp), %r12
	movq	-128(%rbp), %r13
	movl	%edi, -284(%rbp)        # 4-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movq	%rbx, %rdx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movq	%r14, %rcx
	movq	%r9, -320(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	%r12, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%r13, 16(%rsp)
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$-6, 32(%rsp)
	movq	-296(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	movl	$-5, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	callq	gimp_viewable_dialog_new
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
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
	movq	-136(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_type_check_instance_cast
	movabsq	$vectors_options_dialog_free, %rsi
	movq	-136(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-336(%rbp), %rdx        # 8-byte Reload
	callq	g_object_weak_ref
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-168(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-160(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	-396(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movl	$150, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-136(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	movq	-168(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-136(%rbp), %rsi
	movq	8(%rsi), %r8
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-136(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-136(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_78:                               # %return
	movq	-48(%rbp), %rax
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vectors_options_dialog_new, .Lfunc_end0-vectors_options_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_options_dialog_free,@function
vectors_options_dialog_free:            # @vectors_options_dialog_free
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
	.size	vectors_options_dialog_free, .Lfunc_end1-vectors_options_dialog_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.vectors_options_dialog_new,@object # @__func__.vectors_options_dialog_new
.L__func__.vectors_options_dialog_new:
	.asciz	"vectors_options_dialog_new"
	.size	.L__func__.vectors_options_dialog_new, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"vectors == NULL || GIMP_IS_VECTORS (vectors)"
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
	.asciz	"title != NULL"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"role != NULL"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"stock_id != NULL"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"desc != NULL"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"help_id != NULL"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-cancel"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gtk-ok"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Path name:"
	.size	.L.str.12, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
