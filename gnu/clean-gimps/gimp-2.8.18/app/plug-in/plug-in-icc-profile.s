	.text
	.file	"plug-in-icc-profile.bc"
	.globl	plug_in_icc_profile_apply_rgb
	.align	16, 0x90
	.type	plug_in_icc_profile_apply_rgb,@function
plug_in_icc_profile_apply_rgb:          # @plug_in_icc_profile_apply_rgb
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_icc_profile_apply_rgb, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_84
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_icc_profile_apply_rgb, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_84
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB0_34
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.49
	movl	$0, -132(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.50
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_31
# BB#29:                                # %land.lhs.true.53
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.57
	movl	$1, -132(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.58
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB0_32:                               # %if.end.60
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.61
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB0_35
.LBB0_34:                               # %if.then.64
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_icc_profile_apply_rgb, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_84
.LBB0_36:                               # %if.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %do.end.67
	jmp	.LBB0_38
.LBB0_38:                               # %do.body.68
	cmpq	$0, -48(%rbp)
	je	.LBB0_40
# BB#39:                                # %lor.lhs.false.70
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_41
.LBB0_40:                               # %if.then.72
	jmp	.LBB0_42
.LBB0_41:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_icc_profile_apply_rgb, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_84
.LBB0_42:                               # %if.end.74
	jmp	.LBB0_43
.LBB0_43:                               # %do.end.75
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$1, %eax
	jne	.LBB0_45
# BB#44:                                # %if.then.79
	movq	-48(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_error_quark
	movabsq	$.L.str.5, %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$1, %edx
	movabsq	$.L.str.6, %r8
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	-252(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB0_84
.LBB0_45:                               # %if.end.82
	movabsq	$.L.str.6, %rsi
	movq	-56(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB0_83
# BB#46:                                # %land.lhs.true.85
	movq	-64(%rbp), %rax
	cmpl	$2, 96(%rax)
	jl	.LBB0_83
# BB#47:                                # %land.lhs.true.87
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB0_49
# BB#48:                                # %if.then.96
	movl	$0, -156(%rbp)
	jmp	.LBB0_54
.LBB0_49:                               # %if.else.97
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_52
# BB#50:                                # %land.lhs.true.100
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB0_52
# BB#51:                                # %if.then.104
	movl	$1, -156(%rbp)
	jmp	.LBB0_53
.LBB0_52:                               # %if.else.105
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB0_53:                               # %if.end.107
	jmp	.LBB0_54
.LBB0_54:                               # %if.end.108
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB0_83
# BB#55:                                # %land.lhs.true.111
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB0_57
# BB#56:                                # %if.then.122
	movl	$0, -180(%rbp)
	jmp	.LBB0_62
.LBB0_57:                               # %if.else.123
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_60
# BB#58:                                # %land.lhs.true.126
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB0_60
# BB#59:                                # %if.then.130
	movl	$1, -180(%rbp)
	jmp	.LBB0_61
.LBB0_60:                               # %if.else.131
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB0_61:                               # %if.end.133
	jmp	.LBB0_62
.LBB0_62:                               # %if.end.134
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB0_83
# BB#63:                                # %if.then.137
	movl	$0, -200(%rbp)
	movq	-56(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gimp_int32_get_type
	movl	-36(%rbp), %r8d
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movl	%r8d, -300(%rbp)        # 4-byte Spill
	callq	gimp_image_id_get_type
	movq	-16(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_image_get_ID
	movq	%rsp, %rcx
	movl	%eax, 16(%rcx)
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 8(%rcx)
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rcx)
	movq	$4, 24(%rcx)
	movl	$.L.str.6, %eax
	movl	%eax, %r8d
	xorl	%eax, %eax
	movb	%al, %r9b
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	-296(%rbp), %r10        # 8-byte Reload
	movb	%r9b, -313(%rbp)        # 1-byte Spill
	movq	%r10, %r9
	movb	-313(%rbp), %al         # 1-byte Reload
	callq	gimp_pdb_execute_procedure_by_name
	movq	%rax, -192(%rbp)
	movq	8(%rax), %rdi
	callq	g_value_get_enum
	movl	%eax, -196(%rbp)
	movl	%eax, %r11d
	subl	$3, %eax
	movl	%r11d, -320(%rbp)       # 4-byte Spill
	movl	%eax, -324(%rbp)        # 4-byte Spill
	je	.LBB0_64
	jmp	.LBB0_85
.LBB0_85:                               # %if.then.137
	movl	-320(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	je	.LBB0_65
	jmp	.LBB0_66
.LBB0_64:                               # %sw.bb
	movl	$2, -200(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_70
.LBB0_65:                               # %sw.bb.148
	movl	$1, -200(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_70
.LBB0_66:                               # %sw.default
	cmpq	$0, -48(%rbp)
	je	.LBB0_69
# BB#67:                                # %land.lhs.true.150
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_69
# BB#68:                                # %if.then.152
	movq	-48(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$1, %edx
	movabsq	$.L.str.6, %r8
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movl	-340(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
.LBB0_69:                               # %if.end.155
	movl	$0, -204(%rbp)
.LBB0_70:                               # %sw.epilog
	cmpl	$0, -204(%rbp)
	je	.LBB0_82
# BB#71:                                # %land.lhs.true.157
	movq	-192(%rbp), %rax
	cmpl	$1, (%rax)
	jbe	.LBB0_82
# BB#72:                                # %if.then.159
	movl	$1, %esi
	movq	-192(%rbp), %rdi
	callq	g_value_array_get_nth
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_int32_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB0_74
# BB#73:                                # %if.then.169
	movl	$0, -236(%rbp)
	jmp	.LBB0_78
.LBB0_74:                               # %if.else.170
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB0_76
# BB#75:                                # %if.then.173
	movl	$1, -236(%rbp)
	jmp	.LBB0_77
.LBB0_76:                               # %if.else.174
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -236(%rbp)
.LBB0_77:                               # %if.end.176
	jmp	.LBB0_78
.LBB0_78:                               # %if.end.177
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB0_81
# BB#79:                                # %land.lhs.true.180
	movq	-216(%rbp), %rdi
	callq	g_value_get_int
	cmpl	$0, %eax
	je	.LBB0_81
# BB#80:                                # %if.then.183
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	-200(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB0_81:                               # %if.end.185
	jmp	.LBB0_82
.LBB0_82:                               # %if.end.186
	movq	-192(%rbp), %rdi
	callq	g_value_array_free
	movl	-204(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_84
.LBB0_83:                               # %if.end.187
	movq	-48(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$2, %edx
	movabsq	$.L.str.6, %r8
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movl	-356(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
.LBB0_84:                               # %return
	movl	-4(%rbp), %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end0:
	.size	plug_in_icc_profile_apply_rgb, .Lfunc_end0-plug_in_icc_profile_apply_rgb
	.cfi_endproc

	.globl	plug_in_icc_profile_info
	.align	16, 0x90
	.type	plug_in_icc_profile_info,@function
plug_in_icc_profile_info:               # @plug_in_icc_profile_info
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
	subq	$288, %rsp              # imm = 0x120
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_icc_profile_info, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_61
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -124(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -124(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_icc_profile_info, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_61
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	jmp	.LBB1_25
.LBB1_25:                               # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB1_34
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB1_28
# BB#27:                                # %if.then.49
	movl	$0, -148(%rbp)
	jmp	.LBB1_33
.LBB1_28:                               # %if.else.50
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_31
# BB#29:                                # %land.lhs.true.53
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB1_31
# BB#30:                                # %if.then.57
	movl	$1, -148(%rbp)
	jmp	.LBB1_32
.LBB1_31:                               # %if.else.58
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB1_32:                               # %if.end.60
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.61
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB1_35
.LBB1_34:                               # %if.then.64
	jmp	.LBB1_36
.LBB1_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_icc_profile_info, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_61
.LBB1_36:                               # %if.end.66
	jmp	.LBB1_37
.LBB1_37:                               # %do.end.67
	jmp	.LBB1_38
.LBB1_38:                               # %do.body.68
	cmpq	$0, -64(%rbp)
	je	.LBB1_40
# BB#39:                                # %lor.lhs.false.70
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_41
.LBB1_40:                               # %if.then.72
	jmp	.LBB1_42
.LBB1_41:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_icc_profile_info, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_61
.LBB1_42:                               # %if.end.74
	jmp	.LBB1_43
.LBB1_43:                               # %do.end.75
	movabsq	$.L.str.10, %rsi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB1_60
# BB#44:                                # %land.lhs.true.79
	movq	-80(%rbp), %rax
	cmpl	$1, 96(%rax)
	jl	.LBB1_60
# BB#45:                                # %land.lhs.true.81
	movq	-80(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB1_47
# BB#46:                                # %if.then.90
	movl	$0, -172(%rbp)
	jmp	.LBB1_52
.LBB1_47:                               # %if.else.91
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_50
# BB#48:                                # %land.lhs.true.94
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB1_50
# BB#49:                                # %if.then.98
	movl	$1, -172(%rbp)
	jmp	.LBB1_51
.LBB1_50:                               # %if.else.99
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB1_51:                               # %if.end.101
	jmp	.LBB1_52
.LBB1_52:                               # %if.end.102
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB1_60
# BB#53:                                # %if.then.105
	movq	-72(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gimp_image_id_get_type
	movq	-16(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_image_get_ID
	movq	%rsp, %rcx
	movl	%eax, (%rcx)
	movq	$4, 8(%rcx)
	movl	$.L.str.10, %eax
	movl	%eax, %r8d
	xorl	%eax, %eax
	movb	%al, %r9b
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %r10        # 8-byte Reload
	movb	%r9b, -233(%rbp)        # 1-byte Spill
	movq	%r10, %r9
	movb	-233(%rbp), %al         # 1-byte Reload
	callq	gimp_pdb_execute_procedure_by_name
	movq	%rax, -184(%rbp)
	movq	8(%rax), %rdi
	callq	g_value_get_enum
	movl	%eax, -188(%rbp)
	subl	$3, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jne	.LBB1_55
	jmp	.LBB1_54
.LBB1_54:                               # %sw.bb
	movq	-184(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	plug_in_icc_profile_info_return
	jmp	.LBB1_59
.LBB1_55:                               # %sw.default
	cmpq	$0, -64(%rbp)
	je	.LBB1_58
# BB#56:                                # %land.lhs.true.114
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_58
# BB#57:                                # %if.then.116
	movq	-64(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movabsq	$.L.str.10, %r8
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	-252(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
.LBB1_58:                               # %if.end.119
	jmp	.LBB1_59
.LBB1_59:                               # %sw.epilog
	movq	-184(%rbp), %rdi
	callq	g_value_array_free
	cmpl	$3, -188(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB1_61
.LBB1_60:                               # %if.end.121
	movq	-64(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movabsq	$.L.str.10, %r8
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	-268(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
.LBB1_61:                               # %return
	movl	-4(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end1:
	.size	plug_in_icc_profile_info, .Lfunc_end1-plug_in_icc_profile_info
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_icc_profile_info_return,@function
plug_in_icc_profile_info_return:        # @plug_in_icc_profile_info_return
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_11
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	g_value_array_get_nth
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$64, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then.2
	movl	$0, -60(%rbp)
	jmp	.LBB2_7
.LBB2_3:                                # %if.else
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB2_5
# BB#4:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB2_6
.LBB2_5:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -60(%rbp)
.LBB2_6:                                # %if.end
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_9
# BB#8:                                 # %cond.true
	movq	-40(%rbp), %rdi
	callq	g_value_dup_string
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB2_10
.LBB2_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB2_10
.LBB2_10:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_11:                               # %if.end.9
	cmpq	$0, -24(%rbp)
	je	.LBB2_22
# BB#12:                                # %if.then.11
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	callq	g_value_array_get_nth
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$64, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB2_14
# BB#13:                                # %if.then.22
	movl	$0, -92(%rbp)
	jmp	.LBB2_18
.LBB2_14:                               # %if.else.23
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB2_16
# BB#15:                                # %if.then.26
	movl	$1, -92(%rbp)
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.27
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -92(%rbp)
.LBB2_17:                               # %if.end.29
	jmp	.LBB2_18
.LBB2_18:                               # %if.end.30
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB2_20
# BB#19:                                # %cond.true.33
	movq	-72(%rbp), %rdi
	callq	g_value_dup_string
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB2_21
.LBB2_20:                               # %cond.false.35
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB2_21
.LBB2_21:                               # %cond.end.36
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_22:                               # %if.end.38
	cmpq	$0, -32(%rbp)
	je	.LBB2_33
# BB#23:                                # %if.then.40
	movl	$3, %esi
	movq	-8(%rbp), %rdi
	callq	g_value_array_get_nth
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$64, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB2_25
# BB#24:                                # %if.then.51
	movl	$0, -124(%rbp)
	jmp	.LBB2_29
.LBB2_25:                               # %if.else.52
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB2_27
# BB#26:                                # %if.then.55
	movl	$1, -124(%rbp)
	jmp	.LBB2_28
.LBB2_27:                               # %if.else.56
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -124(%rbp)
.LBB2_28:                               # %if.end.58
	jmp	.LBB2_29
.LBB2_29:                               # %if.end.59
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB2_31
# BB#30:                                # %cond.true.62
	movq	-104(%rbp), %rdi
	callq	g_value_dup_string
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB2_32
.LBB2_31:                               # %cond.false.64
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB2_32
.LBB2_32:                               # %cond.end.65
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_33:                               # %if.end.67
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	plug_in_icc_profile_info_return, .Lfunc_end2-plug_in_icc_profile_info_return
	.cfi_endproc

	.globl	plug_in_icc_profile_file_info
	.align	16, 0x90
	.type	plug_in_icc_profile_file_info,@function
plug_in_icc_profile_file_info:          # @plug_in_icc_profile_file_info
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
	subq	$240, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_icc_profile_file_info, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_66
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -124(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -124(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_icc_profile_file_info, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_66
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB3_34
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB3_28
# BB#27:                                # %if.then.49
	movl	$0, -148(%rbp)
	jmp	.LBB3_33
.LBB3_28:                               # %if.else.50
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_31
# BB#29:                                # %land.lhs.true.53
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB3_31
# BB#30:                                # %if.then.57
	movl	$1, -148(%rbp)
	jmp	.LBB3_32
.LBB3_31:                               # %if.else.58
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB3_32:                               # %if.end.60
	jmp	.LBB3_33
.LBB3_33:                               # %if.end.61
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB3_35
.LBB3_34:                               # %if.then.64
	jmp	.LBB3_36
.LBB3_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_icc_profile_file_info, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_66
.LBB3_36:                               # %if.end.66
	jmp	.LBB3_37
.LBB3_37:                               # %do.end.67
	jmp	.LBB3_38
.LBB3_38:                               # %do.body.68
	cmpq	$0, -40(%rbp)
	je	.LBB3_40
# BB#39:                                # %if.then.70
	jmp	.LBB3_41
.LBB3_40:                               # %if.else.71
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_icc_profile_file_info, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_66
.LBB3_41:                               # %if.end.72
	jmp	.LBB3_42
.LBB3_42:                               # %do.end.73
	jmp	.LBB3_43
.LBB3_43:                               # %do.body.74
	cmpq	$0, -72(%rbp)
	je	.LBB3_45
# BB#44:                                # %lor.lhs.false.76
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_46
.LBB3_45:                               # %if.then.78
	jmp	.LBB3_47
.LBB3_46:                               # %if.else.79
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_icc_profile_file_info, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_66
.LBB3_47:                               # %if.end.80
	jmp	.LBB3_48
.LBB3_48:                               # %do.end.81
	movabsq	$.L.str.13, %rsi
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB3_65
# BB#49:                                # %land.lhs.true.84
	movq	-80(%rbp), %rax
	cmpl	$1, 96(%rax)
	jl	.LBB3_65
# BB#50:                                # %land.lhs.true.86
	movq	-80(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_param_string_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB3_52
# BB#51:                                # %if.then.95
	movl	$0, -172(%rbp)
	jmp	.LBB3_57
.LBB3_52:                               # %if.else.96
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_55
# BB#53:                                # %land.lhs.true.99
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB3_55
# BB#54:                                # %if.then.103
	movl	$1, -172(%rbp)
	jmp	.LBB3_56
.LBB3_55:                               # %if.else.104
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB3_56:                               # %if.end.106
	jmp	.LBB3_57
.LBB3_57:                               # %if.end.107
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB3_65
# BB#58:                                # %if.then.110
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rsp, %r8
	movq	%rax, (%r8)
	movq	$4, 8(%r8)
	movl	$.L.str.13, %r9d
	movl	%r9d, %r8d
	movl	$64, %r9d
                                        # kill: R9<def> R9D<kill>
	xorl	%r10d, %r10d
	movb	%r10b, %r11b
	movb	%r11b, %al
	callq	gimp_pdb_execute_procedure_by_name
	movq	%rax, -184(%rbp)
	movq	8(%rax), %rdi
	callq	g_value_get_enum
	movl	%eax, -188(%rbp)
	subl	$3, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jne	.LBB3_60
	jmp	.LBB3_59
.LBB3_59:                               # %sw.bb
	movq	-184(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	plug_in_icc_profile_info_return
	jmp	.LBB3_64
.LBB3_60:                               # %sw.default
	cmpq	$0, -72(%rbp)
	je	.LBB3_63
# BB#61:                                # %land.lhs.true.117
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_63
# BB#62:                                # %if.then.119
	movq	-72(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movabsq	$.L.str.13, %r8
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
.LBB3_63:                               # %if.end.122
	jmp	.LBB3_64
.LBB3_64:                               # %sw.epilog
	movq	-184(%rbp), %rdi
	callq	g_value_array_free
	cmpl	$3, -188(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB3_66
.LBB3_65:                               # %if.end.124
	movq	-72(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movabsq	$.L.str.13, %r8
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-220(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
.LBB3_66:                               # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	plug_in_icc_profile_file_info, .Lfunc_end3-plug_in_icc_profile_file_info
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.plug_in_icc_profile_apply_rgb,@object # @__func__.plug_in_icc_profile_apply_rgb
.L__func__.plug_in_icc_profile_apply_rgb:
	.asciz	"plug_in_icc_profile_apply_rgb"
	.size	.L__func__.plug_in_icc_profile_apply_rgb, 30

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
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Can't apply color profile to grayscale image (%s)"
	.size	.L.str.5, 50

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"plug-in-icc-profile-apply-rgb"
	.size	.L.str.6, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Error running '%s'"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"color-profile-policy"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Plug-In missing (%s)"
	.size	.L.str.9, 21

	.type	.L__func__.plug_in_icc_profile_info,@object # @__func__.plug_in_icc_profile_info
.L__func__.plug_in_icc_profile_info:
	.asciz	"plug_in_icc_profile_info"
	.size	.L__func__.plug_in_icc_profile_info, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-icc-profile-info"
	.size	.L.str.10, 25

	.type	.L__func__.plug_in_icc_profile_file_info,@object # @__func__.plug_in_icc_profile_file_info
.L__func__.plug_in_icc_profile_file_info:
	.asciz	"plug_in_icc_profile_file_info"
	.size	.L__func__.plug_in_icc_profile_file_info, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"filename != NULL"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"plug-in-icc-profile-file-info"
	.size	.L.str.13, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
