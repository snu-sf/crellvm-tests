	.text
	.file	"plug-in-params.bc"
	.globl	plug_in_params_to_args
	.align	16, 0x90
	.type	plug_in_params_to_args,@function
plug_in_params_to_args:                 # @plug_in_params_to_args
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %land.lhs.true
	cmpl	$0, -20(%rbp)
	jg	.LBB0_5
.LBB0_3:                                # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	jne	.LBB0_6
# BB#4:                                 # %land.lhs.true.3
	cmpl	$0, -20(%rbp)
	jne	.LBB0_6
.LBB0_5:                                # %if.then
	jmp	.LBB0_7
.LBB0_6:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_params_to_args, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_115
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %do.end
	jmp	.LBB0_9
.LBB0_9:                                # %do.body.5
	cmpq	$0, -32(%rbp)
	je	.LBB0_11
# BB#10:                                # %land.lhs.true.7
	cmpl	$0, -36(%rbp)
	jg	.LBB0_13
.LBB0_11:                               # %lor.lhs.false.9
	cmpq	$0, -32(%rbp)
	jne	.LBB0_14
# BB#12:                                # %land.lhs.true.11
	cmpl	$0, -36(%rbp)
	jne	.LBB0_14
.LBB0_13:                               # %if.then.13
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_params_to_args, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_115
.LBB0_15:                               # %if.end.15
	jmp	.LBB0_16
.LBB0_16:                               # %do.end.16
	movl	-36(%rbp), %edi
	callq	g_value_array_new
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB0_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_114
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB0_17 Depth=1
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movslq	-60(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_pdb_compat_arg_type_to_gtype
	movq	%rax, -96(%rbp)
	cmpl	$0, -60(%rbp)
	jg	.LBB0_20
# BB#19:                                # %lor.lhs.false.21
                                        #   in Loop: Header=BB0_17 Depth=1
	cmpl	$0, -40(%rbp)
	jne	.LBB0_27
.LBB0_20:                               # %if.then.22
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.24
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-104(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -104(%rbp)
.LBB0_22:                               # %if.end.25
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-104(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_26
# BB#23:                                # %if.then.27
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$76, %eax
	movl	%eax, %esi
	movslq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	24(%rax), %rdi
	callq	gimp_pdb_compat_arg_type_from_gtype
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	movslq	-60(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jne	.LBB0_25
# BB#24:                                # %if.then.36
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$76, %eax
	movl	%eax, %esi
	movslq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB0_25:                               # %if.end.41
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.42
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_27
.LBB0_27:                               # %if.end.43
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-96(%rbp), %rsi
	leaq	-88(%rbp), %rdi
	callq	g_value_init
	movq	-96(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_pdb_compat_arg_type_from_gtype
	movl	%eax, %ecx
	movl	%ecx, %esi
	subl	$22, %eax
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movl	%eax, -228(%rbp)        # 4-byte Spill
	ja	.LBB0_112
# BB#116:                               # %if.end.43
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_28:                               # %sw.bb
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	$24, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB0_30
# BB#29:                                # %if.then.47
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$0, -132(%rbp)
	jmp	.LBB0_34
.LBB0_30:                               # %if.else.48
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB0_32
# BB#31:                                # %if.then.50
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$1, -132(%rbp)
	jmp	.LBB0_33
.LBB0_32:                               # %if.else.51
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -132(%rbp)
.LBB0_33:                               # %if.end.53
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_34
.LBB0_34:                               # %if.end.54
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB0_36
# BB#35:                                # %if.then.56
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB0_65
.LBB0_36:                               # %if.else.59
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	$28, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB0_38
# BB#37:                                # %if.then.67
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$0, -156(%rbp)
	jmp	.LBB0_42
.LBB0_38:                               # %if.else.68
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB0_40
# BB#39:                                # %if.then.71
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$1, -156(%rbp)
	jmp	.LBB0_41
.LBB0_40:                               # %if.else.72
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -156(%rbp)
.LBB0_41:                               # %if.end.74
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_42
.LBB0_42:                               # %if.end.75
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB0_44
# BB#43:                                # %if.then.78
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_uint
	jmp	.LBB0_64
.LBB0_44:                               # %if.else.83
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	$48, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB0_46
# BB#45:                                # %if.then.91
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$0, -180(%rbp)
	jmp	.LBB0_50
.LBB0_46:                               # %if.else.92
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB0_48
# BB#47:                                # %if.then.95
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$1, -180(%rbp)
	jmp	.LBB0_49
.LBB0_48:                               # %if.else.96
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -180(%rbp)
.LBB0_49:                               # %if.end.98
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_50
.LBB0_50:                               # %if.end.99
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB0_52
# BB#51:                                # %if.then.102
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB0_63
.LBB0_52:                               # %if.else.107
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$20, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB0_54
# BB#53:                                # %if.then.115
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$0, -204(%rbp)
	jmp	.LBB0_58
.LBB0_54:                               # %if.else.116
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB0_56
# BB#55:                                # %if.then.119
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$1, -204(%rbp)
	jmp	.LBB0_57
.LBB0_56:                               # %if.else.120
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -204(%rbp)
.LBB0_57:                               # %if.end.122
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_58
.LBB0_58:                               # %if.end.123
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB0_60
# BB#59:                                # %if.then.126
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movslq	-60(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	-32(%rbp), %rdx
	cmpl	$0, 8(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, %esi
	callq	g_value_set_boolean
	jmp	.LBB0_62
.LBB0_60:                               # %if.else.132
	movq	-88(%rbp), %rdi
	callq	g_type_name
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.plug_in_params_to_args, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_printerr
# BB#61:                                # %do.body.135
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.4, %rdx
	movabsq	$.L.str.5, %rcx
	movl	$109, %r8d
	movabsq	$.L__func__.plug_in_params_to_args, %r9
	movb	$0, %al
	callq	g_log
	movq	-56(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB0_115
.LBB0_62:                               # %if.end.137
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_63
.LBB0_63:                               # %if.end.138
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_64
.LBB0_64:                               # %if.end.139
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_65
.LBB0_65:                               # %if.end.140
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_112
.LBB0_66:                               # %sw.bb.141
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movswl	8(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB0_112
.LBB0_67:                               # %sw.bb.145
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movzbl	8(%rax), %esi
	callq	g_value_set_uint
	jmp	.LBB0_112
.LBB0_68:                               # %sw.bb.150
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB0_112
.LBB0_69:                               # %sw.bb.154
                                        #   in Loop: Header=BB0_17 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB0_71
# BB#70:                                # %if.then.156
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB0_72
.LBB0_71:                               # %if.else.160
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_value_set_static_string
.LBB0_72:                               # %if.end.165
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_112
.LBB0_73:                               # %sw.bb.166
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	8(%rdx), %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -100(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB0_75
# BB#74:                                # %if.then.171
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-100(%rbp), %rdx
	callq	gimp_value_set_int32array
	jmp	.LBB0_76
.LBB0_75:                               # %if.else.176
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-100(%rbp), %rdx
	callq	gimp_value_set_static_int32array
.LBB0_76:                               # %if.end.182
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_112
.LBB0_77:                               # %sw.bb.183
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	8(%rdx), %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -100(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB0_79
# BB#78:                                # %if.then.190
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-100(%rbp), %rdx
	callq	gimp_value_set_int16array
	jmp	.LBB0_80
.LBB0_79:                               # %if.else.195
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-100(%rbp), %rdx
	callq	gimp_value_set_static_int16array
.LBB0_80:                               # %if.end.201
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_112
.LBB0_81:                               # %sw.bb.202
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	8(%rdx), %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -100(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB0_83
# BB#82:                                # %if.then.209
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-100(%rbp), %rdx
	callq	gimp_value_set_int8array
	jmp	.LBB0_84
.LBB0_83:                               # %if.else.214
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-100(%rbp), %rdx
	callq	gimp_value_set_static_int8array
.LBB0_84:                               # %if.end.220
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_112
.LBB0_85:                               # %sw.bb.221
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	8(%rdx), %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -100(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB0_87
# BB#86:                                # %if.then.228
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-100(%rbp), %rdx
	callq	gimp_value_set_floatarray
	jmp	.LBB0_88
.LBB0_87:                               # %if.else.233
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-100(%rbp), %rdx
	callq	gimp_value_set_static_floatarray
.LBB0_88:                               # %if.end.239
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_112
.LBB0_89:                               # %sw.bb.240
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	8(%rdx), %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -100(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB0_91
# BB#90:                                # %if.then.247
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-100(%rbp), %rdx
	callq	gimp_value_set_stringarray
	jmp	.LBB0_92
.LBB0_91:                               # %if.else.252
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-100(%rbp), %rdx
	callq	gimp_value_set_static_stringarray
.LBB0_92:                               # %if.end.258
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_112
.LBB0_93:                               # %sw.bb.259
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	gimp_value_set_rgb
	jmp	.LBB0_112
.LBB0_94:                               # %sw.bb.263
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB0_112
.LBB0_95:                               # %sw.bb.267
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB0_112
.LBB0_96:                               # %sw.bb.271
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB0_112
.LBB0_97:                               # %sw.bb.275
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB0_112
.LBB0_98:                               # %sw.bb.279
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB0_112
.LBB0_99:                               # %sw.bb.283
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB0_112
.LBB0_100:                              # %sw.bb.287
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB0_112
.LBB0_101:                              # %sw.bb.291
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	8(%rdx), %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -100(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB0_103
# BB#102:                               # %if.then.298
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-100(%rbp), %rdx
	callq	gimp_value_set_colorarray
	jmp	.LBB0_104
.LBB0_103:                              # %if.else.303
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-100(%rbp), %rdx
	callq	gimp_value_set_static_colorarray
.LBB0_104:                              # %if.end.309
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_112
.LBB0_105:                              # %sw.bb.310
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB0_112
.LBB0_106:                              # %sw.bb.314
                                        #   in Loop: Header=BB0_17 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB0_108
# BB#107:                               # %if.then.316
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed
	jmp	.LBB0_109
.LBB0_108:                              # %if.else.320
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	g_value_set_static_boxed
.LBB0_109:                              # %if.end.325
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_112
.LBB0_110:                              # %sw.bb.326
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rdi
	movslq	-60(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB0_112
.LBB0_111:                              # %sw.bb.330
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_112
.LBB0_112:                              # %sw.epilog
                                        #   in Loop: Header=BB0_17 Depth=1
	leaq	-88(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	g_value_array_append
	leaq	-88(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_value_unset
# BB#113:                               # %for.inc
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_17
.LBB0_114:                              # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_115:                              # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	plug_in_params_to_args, .Lfunc_end0-plug_in_params_to_args
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_28
	.quad	.LBB0_66
	.quad	.LBB0_67
	.quad	.LBB0_68
	.quad	.LBB0_69
	.quad	.LBB0_73
	.quad	.LBB0_77
	.quad	.LBB0_81
	.quad	.LBB0_85
	.quad	.LBB0_89
	.quad	.LBB0_93
	.quad	.LBB0_94
	.quad	.LBB0_95
	.quad	.LBB0_96
	.quad	.LBB0_97
	.quad	.LBB0_98
	.quad	.LBB0_99
	.quad	.LBB0_100
	.quad	.LBB0_101
	.quad	.LBB0_105
	.quad	.LBB0_106
	.quad	.LBB0_110
	.quad	.LBB0_111

	.text
	.globl	plug_in_args_to_params
	.align	16, 0x90
	.type	plug_in_args_to_params,@function
plug_in_args_to_params:                 # @plug_in_args_to_params
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_args_to_params, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_100
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movl	$40, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, %edi
	callq	g_malloc0_n
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB1_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB1_99
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,8), %rdx
	movq	%rdx, -48(%rbp)
	movq	(%rcx,%rax,8), %rdi
	callq	gimp_pdb_compat_arg_type_from_gtype
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, (%rdx,%rcx,8)
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movl	(%rdx,%rcx,8), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$22, %rdx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	ja	.LBB1_97
# BB#101:                               # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_8:                                # %sw.bb
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$24, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.10
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$0, -68(%rbp)
	jmp	.LBB1_14
.LBB1_10:                               # %if.else.11
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB1_12
# BB#11:                                # %if.then.15
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$1, -68(%rbp)
	jmp	.LBB1_13
.LBB1_12:                               # %if.else.16
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -68(%rbp)
.LBB1_13:                               # %if.end.18
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_14
.LBB1_14:                               # %if.end.19
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB1_16
# BB#15:                                # %if.then.21
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_int
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB1_45
.LBB1_16:                               # %if.else.25
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$28, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.33
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$0, -92(%rbp)
	jmp	.LBB1_22
.LBB1_18:                               # %if.else.34
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB1_20
# BB#19:                                # %if.then.38
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$1, -92(%rbp)
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.39
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -92(%rbp)
.LBB1_21:                               # %if.end.41
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.42
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB1_24
# BB#23:                                # %if.then.45
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_uint
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB1_44
.LBB1_24:                               # %if.else.51
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$48, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB1_26
# BB#25:                                # %if.then.59
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$0, -116(%rbp)
	jmp	.LBB1_30
.LBB1_26:                               # %if.else.60
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB1_28
# BB#27:                                # %if.then.64
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$1, -116(%rbp)
	jmp	.LBB1_29
.LBB1_28:                               # %if.else.65
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -116(%rbp)
.LBB1_29:                               # %if.end.67
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_30
.LBB1_30:                               # %if.end.68
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB1_32
# BB#31:                                # %if.then.71
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_enum
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB1_43
.LBB1_32:                               # %if.else.77
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$20, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB1_34
# BB#33:                                # %if.then.85
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$0, -140(%rbp)
	jmp	.LBB1_38
.LBB1_34:                               # %if.else.86
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB1_36
# BB#35:                                # %if.then.90
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$1, -140(%rbp)
	jmp	.LBB1_37
.LBB1_36:                               # %if.else.91
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -140(%rbp)
.LBB1_37:                               # %if.end.93
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_38
.LBB1_38:                               # %if.end.94
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB1_40
# BB#39:                                # %if.then.97
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_boolean
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB1_42
.LBB1_40:                               # %if.else.103
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.plug_in_args_to_params, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_printerr
# BB#41:                                # %do.body.106
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.4, %rdx
	movabsq	$.L.str.5, %rcx
	movl	$295, %r8d              # imm = 0x127
	movabsq	$.L__func__.plug_in_args_to_params, %r9
	movb	$0, %al
	callq	g_log
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB1_100
.LBB1_42:                               # %if.end.108
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_43
.LBB1_43:                               # %if.end.109
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_44
.LBB1_44:                               # %if.end.110
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_45
.LBB1_45:                               # %if.end.111
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_97
.LBB1_46:                               # %sw.bb.112
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_int
	movw	%ax, %cx
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movw	%cx, 8(%rdi)
	jmp	.LBB1_97
.LBB1_47:                               # %sw.bb.118
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_uint
	movb	%al, %cl
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movb	%cl, 8(%rdi)
	jmp	.LBB1_97
.LBB1_48:                               # %sw.bb.124
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_double
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	jmp	.LBB1_97
.LBB1_49:                               # %sw.bb.129
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB1_51
# BB#50:                                # %if.then.131
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_dup_string
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB1_52
.LBB1_51:                               # %if.else.136
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_string
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
.LBB1_52:                               # %if.end.142
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_97
.LBB1_53:                               # %sw.bb.143
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB1_55
# BB#54:                                # %if.then.145
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_value_dup_int32array
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB1_56
.LBB1_55:                               # %if.else.150
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_value_get_int32array
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
.LBB1_56:                               # %if.end.156
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_97
.LBB1_57:                               # %sw.bb.157
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB1_59
# BB#58:                                # %if.then.159
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_value_dup_int16array
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB1_60
.LBB1_59:                               # %if.else.164
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_value_get_int16array
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
.LBB1_60:                               # %if.end.170
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_97
.LBB1_61:                               # %sw.bb.171
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB1_63
# BB#62:                                # %if.then.173
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_value_dup_int8array
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB1_64
.LBB1_63:                               # %if.else.178
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_value_get_int8array
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
.LBB1_64:                               # %if.end.184
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_97
.LBB1_65:                               # %sw.bb.185
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB1_67
# BB#66:                                # %if.then.187
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_value_dup_floatarray
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB1_68
.LBB1_67:                               # %if.else.192
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_value_get_floatarray
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
.LBB1_68:                               # %if.end.198
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_97
.LBB1_69:                               # %sw.bb.199
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB1_71
# BB#70:                                # %if.then.201
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_value_dup_stringarray
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB1_72
.LBB1_71:                               # %if.else.206
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_value_get_stringarray
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
.LBB1_72:                               # %if.end.212
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_97
.LBB1_73:                               # %sw.bb.213
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	gimp_value_get_rgb
	jmp	.LBB1_97
.LBB1_74:                               # %sw.bb.217
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_int
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB1_97
.LBB1_75:                               # %sw.bb.222
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_int
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB1_97
.LBB1_76:                               # %sw.bb.227
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_int
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB1_97
.LBB1_77:                               # %sw.bb.232
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_int
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB1_97
.LBB1_78:                               # %sw.bb.237
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_int
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB1_97
.LBB1_79:                               # %sw.bb.242
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_int
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB1_97
.LBB1_80:                               # %sw.bb.247
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_int
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB1_97
.LBB1_81:                               # %sw.bb.252
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB1_83
# BB#82:                                # %if.then.254
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_value_dup_colorarray
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB1_84
.LBB1_83:                               # %if.else.259
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_value_get_colorarray
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
.LBB1_84:                               # %if.end.265
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_97
.LBB1_85:                               # %sw.bb.266
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_int
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB1_97
.LBB1_86:                               # %sw.bb.271
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB1_88
# BB#87:                                # %cond.true
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_dup_boxed
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB1_89
.LBB1_88:                               # %cond.false
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB1_89:                               # %cond.end
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB1_93
# BB#90:                                # %if.then.277
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movslq	-36(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-152(%rbp), %rax
	movl	8(%rax), %edx
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-152(%rbp), %rax
	movl	12(%rax), %edx
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-36(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	cmpl	$0, -20(%rbp)
	je	.LBB1_92
# BB#91:                                # %if.then.299
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-152(%rbp), %rax
	movq	$0, (%rax)
	movq	-152(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-152(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-152(%rbp), %rdi
	callq	gimp_parasite_free
.LBB1_92:                               # %if.end.304
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_94
.LBB1_93:                               # %if.else.305
                                        #   in Loop: Header=BB1_6 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movl	$0, 20(%rax)
	movslq	-36(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-32(%rbp), %rax
	movq	$0, 24(%rax)
.LBB1_94:                               # %if.end.326
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_97
.LBB1_95:                               # %sw.bb.327
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_value_get_enum
	movslq	-36(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB1_97
.LBB1_96:                               # %sw.bb.332
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_97
.LBB1_97:                               # %sw.epilog
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_98
.LBB1_98:                               # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_6
.LBB1_99:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_100:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	plug_in_args_to_params, .Lfunc_end1-plug_in_args_to_params
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_8
	.quad	.LBB1_46
	.quad	.LBB1_47
	.quad	.LBB1_48
	.quad	.LBB1_49
	.quad	.LBB1_53
	.quad	.LBB1_57
	.quad	.LBB1_61
	.quad	.LBB1_65
	.quad	.LBB1_69
	.quad	.LBB1_73
	.quad	.LBB1_74
	.quad	.LBB1_75
	.quad	.LBB1_76
	.quad	.LBB1_77
	.quad	.LBB1_78
	.quad	.LBB1_79
	.quad	.LBB1_80
	.quad	.LBB1_81
	.quad	.LBB1_85
	.quad	.LBB1_86
	.quad	.LBB1_95
	.quad	.LBB1_96

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.plug_in_params_to_args,@object # @__func__.plug_in_params_to_args
.L__func__.plug_in_params_to_args:
	.asciz	"plug_in_params_to_args"
	.size	.L__func__.plug_in_params_to_args, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"(pspecs != NULL && n_pspecs > 0) || (pspecs == NULL && n_pspecs == 0)"
	.size	.L.str.1, 70

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(params != NULL && n_params > 0) || (params == NULL && n_params == 0)"
	.size	.L.str.2, 70

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s: unhandled GIMP_PDB_INT32 type: %s\n"
	.size	.L.str.3, 39

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.4, 45

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"plug-in-params.c"
	.size	.L.str.5, 17

	.type	.L__func__.plug_in_args_to_params,@object # @__func__.plug_in_args_to_params
.L__func__.plug_in_args_to_params:
	.asciz	"plug_in_args_to_params"
	.size	.L__func__.plug_in_args_to_params, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"args != NULL"
	.size	.L.str.6, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
