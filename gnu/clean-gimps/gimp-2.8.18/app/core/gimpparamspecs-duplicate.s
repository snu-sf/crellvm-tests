	.text
	.file	"gimpparamspecs-duplicate.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_param_spec_duplicate
	.align	16, 0x90
	.type	gimp_param_spec_duplicate,@function
gimp_param_spec_duplicate:              # @gimp_param_spec_duplicate
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
	subq	$640, %rsp              # imm = 0x280
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_param_spec_duplicate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_125
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_7
# BB#6:                                 # %if.then.1
	movl	$0, -36(%rbp)
	jmp	.LBB0_12
.LBB0_7:                                # %if.else.2
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_10
# BB#8:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_10
# BB#9:                                 # %if.then.6
	movl	$1, -36(%rbp)
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.7
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB0_11:                               # %if.end.8
	jmp	.LBB0_12
.LBB0_12:                               # %if.end.9
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_34
# BB#13:                                # %if.then.11
	movq	-16(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	112(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gegl_param_file_path_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.23
	movl	$0, -68(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.24
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.27
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.31
	movl	$1, -68(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.32
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_19:                               # %if.end.34
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.35
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.38
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_param_spec_get_nick
	movq	-16(%rbp), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_blurb
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi
	movq	72(%rdi), %r8
	movq	-16(%rbp), %rdi
	movl	16(%rdi), %r9d
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	-480(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_param_spec_config_path
	movq	%rax, -8(%rbp)
	jmp	.LBB0_125
.LBB0_22:                               # %if.else.42
	cmpl	$0, gimp_param_spec_duplicate.multiline_quark
	jne	.LBB0_24
# BB#23:                                # %if.then.45
	movabsq	$.L.str.2, %rdi
	callq	g_quark_from_static_string
	movl	%eax, gimp_param_spec_duplicate.multiline_quark
.LBB0_24:                               # %if.end.47
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_param_spec_get_nick
	movq	-16(%rbp), %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_blurb
	movq	-48(%rbp), %rdi
	movq	72(%rdi), %rcx
	movq	-16(%rbp), %rdi
	movl	16(%rdi), %r8d
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	-496(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_param_spec_string
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gegl_param_multiline_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_26
# BB#25:                                # %if.then.62
	movl	$0, -100(%rbp)
	jmp	.LBB0_31
.LBB0_26:                               # %if.else.63
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_29
# BB#27:                                # %land.lhs.true.66
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_29
# BB#28:                                # %if.then.70
	movl	$1, -100(%rbp)
	jmp	.LBB0_30
.LBB0_29:                               # %if.else.71
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_30:                               # %if.end.73
	jmp	.LBB0_31
.LBB0_31:                               # %if.end.74
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_33
# BB#32:                                # %if.then.77
	movl	$1, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rdi
	movl	gimp_param_spec_duplicate.multiline_quark, %esi
	callq	g_param_spec_set_qdata
.LBB0_33:                               # %if.end.78
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_125
.LBB0_34:                               # %if.else.79
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	g_param_spec_types, %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB0_36
# BB#35:                                # %if.then.88
	movl	$0, -124(%rbp)
	jmp	.LBB0_41
.LBB0_36:                               # %if.else.89
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_39
# BB#37:                                # %land.lhs.true.92
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB0_39
# BB#38:                                # %if.then.96
	movl	$1, -124(%rbp)
	jmp	.LBB0_40
.LBB0_39:                               # %if.else.97
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB0_40:                               # %if.end.99
	jmp	.LBB0_41
.LBB0_41:                               # %if.end.100
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB0_43
# BB#42:                                # %if.then.103
	movq	-16(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_param_spec_get_nick
	movq	-16(%rbp), %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_blurb
	movq	-136(%rbp), %rcx
	movl	72(%rcx), %ecx
	movq	-16(%rbp), %rsi
	movl	16(%rsi), %r8d
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	-512(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movq	%rax, -8(%rbp)
	jmp	.LBB0_125
.LBB0_43:                               # %if.else.114
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	g_param_spec_types, %rax
	movq	80(%rax), %rax
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB0_45
# BB#44:                                # %if.then.123
	movl	$0, -156(%rbp)
	jmp	.LBB0_50
.LBB0_45:                               # %if.else.124
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_48
# BB#46:                                # %land.lhs.true.127
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB0_48
# BB#47:                                # %if.then.131
	movl	$1, -156(%rbp)
	jmp	.LBB0_49
.LBB0_48:                               # %if.else.132
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB0_49:                               # %if.end.134
	jmp	.LBB0_50
.LBB0_50:                               # %if.end.135
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB0_52
# BB#51:                                # %if.then.138
	movq	-16(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	80(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_param_spec_get_nick
	movq	-16(%rbp), %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_blurb
	movq	-168(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	-168(%rbp), %rsi
	movl	80(%rsi), %r8d
	movq	-16(%rbp), %rsi
	movl	16(%rsi), %r9d
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	-528(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_param_spec_enum
	movq	%rax, -8(%rbp)
	jmp	.LBB0_125
.LBB0_52:                               # %if.else.150
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	g_param_spec_types, %rax
	movq	104(%rax), %rax
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB0_54
# BB#53:                                # %if.then.159
	movl	$0, -188(%rbp)
	jmp	.LBB0_59
.LBB0_54:                               # %if.else.160
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_57
# BB#55:                                # %land.lhs.true.163
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB0_57
# BB#56:                                # %if.then.167
	movl	$1, -188(%rbp)
	jmp	.LBB0_58
.LBB0_57:                               # %if.else.168
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB0_58:                               # %if.end.170
	jmp	.LBB0_59
.LBB0_59:                               # %if.end.171
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB0_61
# BB#60:                                # %if.then.174
	movq	-16(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	104(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -200(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_param_spec_get_nick
	movq	-16(%rbp), %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_blurb
	movq	-200(%rbp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-200(%rbp), %rcx
	movsd	80(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	-200(%rbp), %rcx
	movsd	88(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %ecx
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	-544(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_param_spec_double
	movq	%rax, -8(%rbp)
	jmp	.LBB0_125
.LBB0_61:                               # %if.else.185
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	g_param_spec_types, %rax
	movq	96(%rax), %rax
	movq	%rax, -216(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB0_63
# BB#62:                                # %if.then.194
	movl	$0, -220(%rbp)
	jmp	.LBB0_68
.LBB0_63:                               # %if.else.195
	movq	-208(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_66
# BB#64:                                # %land.lhs.true.198
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-216(%rbp), %rax
	jne	.LBB0_66
# BB#65:                                # %if.then.202
	movl	$1, -220(%rbp)
	jmp	.LBB0_67
.LBB0_66:                               # %if.else.203
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -220(%rbp)
.LBB0_67:                               # %if.end.205
	jmp	.LBB0_68
.LBB0_68:                               # %if.end.206
	movl	-220(%rbp), %eax
	movl	%eax, -224(%rbp)
	cmpl	$0, -224(%rbp)
	je	.LBB0_70
# BB#69:                                # %if.then.209
	movq	-16(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	96(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -232(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_param_spec_get_nick
	movq	-16(%rbp), %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_blurb
	movq	-232(%rbp), %rcx
	movss	72(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-232(%rbp), %rcx
	movss	76(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-232(%rbp), %rcx
	movss	80(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %ecx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	-560(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_param_spec_float
	movq	%rax, -8(%rbp)
	jmp	.LBB0_125
.LBB0_70:                               # %if.else.222
	movq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	g_param_spec_types, %rax
	movq	24(%rax), %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.LBB0_72
# BB#71:                                # %if.then.231
	movl	$0, -252(%rbp)
	jmp	.LBB0_77
.LBB0_72:                               # %if.else.232
	movq	-240(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_75
# BB#73:                                # %land.lhs.true.235
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-248(%rbp), %rax
	jne	.LBB0_75
# BB#74:                                # %if.then.239
	movl	$1, -252(%rbp)
	jmp	.LBB0_76
.LBB0_75:                               # %if.else.240
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -252(%rbp)
.LBB0_76:                               # %if.end.242
	jmp	.LBB0_77
.LBB0_77:                               # %if.end.243
	movl	-252(%rbp), %eax
	movl	%eax, -256(%rbp)
	cmpl	$0, -256(%rbp)
	je	.LBB0_79
# BB#78:                                # %if.then.246
	movq	-16(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -264(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_param_spec_get_nick
	movq	-16(%rbp), %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_blurb
	movq	-264(%rbp), %rcx
	movl	72(%rcx), %ecx
	movq	-264(%rbp), %rsi
	movl	76(%rsi), %r8d
	movq	-264(%rbp), %rsi
	movl	80(%rsi), %r9d
	movq	-16(%rbp), %rsi
	movl	16(%rsi), %edx
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	-576(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -580(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	-580(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	g_param_spec_int
	movq	%rax, -8(%rbp)
	jmp	.LBB0_125
.LBB0_79:                               # %if.else.259
	movq	-16(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	g_param_spec_types, %rax
	movq	32(%rax), %rax
	movq	%rax, -280(%rbp)
	cmpq	$0, -272(%rbp)
	jne	.LBB0_81
# BB#80:                                # %if.then.268
	movl	$0, -284(%rbp)
	jmp	.LBB0_86
.LBB0_81:                               # %if.else.269
	movq	-272(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_84
# BB#82:                                # %land.lhs.true.272
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-280(%rbp), %rax
	jne	.LBB0_84
# BB#83:                                # %if.then.276
	movl	$1, -284(%rbp)
	jmp	.LBB0_85
.LBB0_84:                               # %if.else.277
	movq	-272(%rbp), %rdi
	movq	-280(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -284(%rbp)
.LBB0_85:                               # %if.end.279
	jmp	.LBB0_86
.LBB0_86:                               # %if.end.280
	movl	-284(%rbp), %eax
	movl	%eax, -288(%rbp)
	cmpl	$0, -288(%rbp)
	je	.LBB0_88
# BB#87:                                # %if.then.283
	movq	-16(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	32(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -296(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_param_spec_get_nick
	movq	-16(%rbp), %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_blurb
	movq	-296(%rbp), %rcx
	movl	72(%rcx), %ecx
	movq	-296(%rbp), %rsi
	movl	76(%rsi), %r8d
	movq	-296(%rbp), %rsi
	movl	80(%rsi), %r9d
	movq	-16(%rbp), %rsi
	movl	16(%rsi), %edx
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	-600(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -604(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	-604(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	g_param_spec_uint
	movq	%rax, -8(%rbp)
	jmp	.LBB0_125
.LBB0_88:                               # %if.else.296
	movq	-16(%rbp), %rax
	movq	%rax, -304(%rbp)
	callq	gegl_param_color_get_type
	movq	%rax, -312(%rbp)
	cmpq	$0, -304(%rbp)
	jne	.LBB0_90
# BB#89:                                # %if.then.305
	movl	$0, -316(%rbp)
	jmp	.LBB0_95
.LBB0_90:                               # %if.else.306
	movq	-304(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_93
# BB#91:                                # %land.lhs.true.309
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-312(%rbp), %rax
	jne	.LBB0_93
# BB#92:                                # %if.then.313
	movl	$1, -316(%rbp)
	jmp	.LBB0_94
.LBB0_93:                               # %if.else.314
	movq	-304(%rbp), %rdi
	movq	-312(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -316(%rbp)
.LBB0_94:                               # %if.end.316
	jmp	.LBB0_95
.LBB0_95:                               # %if.end.317
	movl	-316(%rbp), %eax
	movl	%eax, -320(%rbp)
	cmpl	$0, -320(%rbp)
	je	.LBB0_99
# BB#96:                                # %if.then.320
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-416(%rbp), %rcx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -368(%rbp)
	movsd	%xmm1, -376(%rbp)
	movsd	%xmm1, -384(%rbp)
	movsd	%xmm0, -392(%rbp)
	movq	%rcx, %rdi
	callq	memset
	callq	gegl_color_get_type
	leaq	-416(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_value_init
	leaq	-416(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	g_param_value_set_default
	leaq	-416(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	je	.LBB0_98
# BB#97:                                # %if.then.332
	leaq	-368(%rbp), %rsi
	leaq	-376(%rbp), %rdx
	leaq	-384(%rbp), %rcx
	leaq	-392(%rbp), %r8
	movq	-328(%rbp), %rdi
	callq	gegl_color_get_rgba
.LBB0_98:                               # %if.end.333
	leaq	-360(%rbp), %rdi
	movsd	-368(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-384(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-392(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	leaq	-416(%rbp), %rdi
	callq	g_value_unset
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_param_spec_get_nick
	movq	-16(%rbp), %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_blurb
	movl	$1, %ecx
	leaq	-360(%rbp), %r8
	movq	-16(%rbp), %rdi
	movl	16(%rdi), %r9d
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	-632(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_param_spec_rgb
	movq	%rax, -8(%rbp)
	jmp	.LBB0_125
.LBB0_99:                               # %if.else.339
	movq	-16(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	g_param_spec_types, %rax
	movq	152(%rax), %rax
	movq	%rax, -432(%rbp)
	cmpq	$0, -424(%rbp)
	jne	.LBB0_101
# BB#100:                               # %if.then.348
	movl	$0, -436(%rbp)
	jmp	.LBB0_106
.LBB0_101:                              # %if.else.349
	movq	-424(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_104
# BB#102:                               # %land.lhs.true.352
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-432(%rbp), %rax
	jne	.LBB0_104
# BB#103:                               # %if.then.356
	movl	$1, -436(%rbp)
	jmp	.LBB0_105
.LBB0_104:                              # %if.else.357
	movq	-424(%rbp), %rdi
	movq	-432(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -436(%rbp)
.LBB0_105:                              # %if.end.359
	jmp	.LBB0_106
.LBB0_106:                              # %if.end.360
	movl	-436(%rbp), %eax
	movl	%eax, -440(%rbp)
	cmpl	$0, -440(%rbp)
	jne	.LBB0_115
# BB#107:                               # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	g_param_spec_types, %rax
	movq	136(%rax), %rax
	movq	%rax, -456(%rbp)
	cmpq	$0, -448(%rbp)
	jne	.LBB0_109
# BB#108:                               # %if.then.371
	movl	$0, -460(%rbp)
	jmp	.LBB0_114
.LBB0_109:                              # %if.else.372
	movq	-448(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_112
# BB#110:                               # %land.lhs.true.375
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-456(%rbp), %rax
	jne	.LBB0_112
# BB#111:                               # %if.then.379
	movl	$1, -460(%rbp)
	jmp	.LBB0_113
.LBB0_112:                              # %if.else.380
	movq	-448(%rbp), %rdi
	movq	-456(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -460(%rbp)
.LBB0_113:                              # %if.end.382
	jmp	.LBB0_114
.LBB0_114:                              # %if.end.383
	movl	-460(%rbp), %eax
	movl	%eax, -464(%rbp)
	cmpl	$0, -464(%rbp)
	je	.LBB0_116
.LBB0_115:                              # %if.then.386
	movq	$0, -8(%rbp)
	jmp	.LBB0_125
.LBB0_116:                              # %if.end.387
	jmp	.LBB0_117
.LBB0_117:                              # %if.end.388
	jmp	.LBB0_118
.LBB0_118:                              # %if.end.389
	jmp	.LBB0_119
.LBB0_119:                              # %if.end.390
	jmp	.LBB0_120
.LBB0_120:                              # %if.end.391
	jmp	.LBB0_121
.LBB0_121:                              # %if.end.392
	jmp	.LBB0_122
.LBB0_122:                              # %if.end.393
	jmp	.LBB0_123
.LBB0_123:                              # %if.end.394
	jmp	.LBB0_124
.LBB0_124:                              # %if.end.395
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_param_spec_duplicate, %rsi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
.LBB0_125:                              # %return
	movq	-8(%rbp), %rax
	addq	$640, %rsp              # imm = 0x280
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_param_spec_duplicate, .Lfunc_end0-gimp_param_spec_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB1_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB1_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_warning, .Lfunc_end1-g_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_param_spec_duplicate,@object # @__func__.gimp_param_spec_duplicate
.L__func__.gimp_param_spec_duplicate:
	.asciz	"gimp_param_spec_duplicate"
	.size	.L__func__.gimp_param_spec_duplicate, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"pspec != NULL"
	.size	.L.str.1, 14

	.type	gimp_param_spec_duplicate.multiline_quark,@object # @gimp_param_spec_duplicate.multiline_quark
	.local	gimp_param_spec_duplicate.multiline_quark
	.comm	gimp_param_spec_duplicate.multiline_quark,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"multiline"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s: not supported: %s (%s)\n"
	.size	.L.str.3, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
