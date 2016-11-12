	.text
	.file	"gimpgradient-load.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_gradient_load
	.align	16, 0x90
	.type	gimp_gradient_load,@function
gimp_gradient_load:                     # @gimp_gradient_load
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
	subq	$1552, %rsp             # imm = 0x610
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_gradient_load, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_85
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %if.then.2
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.3
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_gradient_load, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_85
.LBB0_9:                                # %if.end.4
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.5
	jmp	.LBB0_11
.LBB0_11:                               # %do.body.6
	cmpq	$0, -32(%rbp)
	je	.LBB0_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_14
.LBB0_13:                               # %if.then.9
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_gradient_load, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_85
.LBB0_15:                               # %if.end.11
	jmp	.LBB0_16
.LBB0_16:                               # %do.end.12
	movabsq	$.L.str.4, %rsi
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_18
# BB#17:                                # %if.then.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -1144(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.5, %rdi
	movl	%eax, -1148(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edx, %edx
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movl	-1148(%rbp), %esi       # 4-byte Reload
	movq	-1160(%rbp), %rcx       # 8-byte Reload
	movq	-1168(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB0_85
.LBB0_18:                               # %if.end.21
	movl	$1024, %esi             # imm = 0x400
	leaq	-1088(%rbp), %rdi
	movl	$1, -1092(%rbp)
	movq	-64(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_20
# BB#19:                                # %if.then.24
	movq	-32(%rbp), %rdi
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -1180(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-1092(%rbp), %r9d
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movl	-1180(%rbp), %esi       # 4-byte Reload
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-64(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -1196(%rbp)       # 4-byte Spill
	jmp	.LBB0_85
.LBB0_20:                               # %if.end.29
	movabsq	$.L.str.7, %rsi
	leaq	-1088(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB0_22
# BB#21:                                # %if.then.33
	movq	-32(%rbp), %rdi
	movq	%rdi, -1208(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.8, %rdi
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movl	-1212(%rbp), %esi       # 4-byte Reload
	movq	-1224(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-64(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -1228(%rbp)       # 4-byte Spill
	jmp	.LBB0_85
.LBB0_22:                               # %if.end.38
	callq	gimp_gradient_get_type
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$1024, %esi             # imm = 0x400
	leaq	-1088(%rbp), %rdi
	movq	%rax, -40(%rbp)
	movl	-1092(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -1092(%rbp)
	movq	-64(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_24
# BB#23:                                # %if.then.44
	movq	-32(%rbp), %rdi
	movq	%rdi, -1240(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -1244(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-1092(%rbp), %r9d
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movl	-1244(%rbp), %esi       # 4-byte Reload
	movq	-1256(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-64(%rbp), %rdi
	callq	fclose
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -1260(%rbp)       # 4-byte Spill
	callq	g_object_unref
	movq	$0, -8(%rbp)
	jmp	.LBB0_85
.LBB0_24:                               # %if.end.49
	movabsq	$.L.str.11, %rsi
	leaq	-1088(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB0_28
# BB#25:                                # %if.then.53
	leaq	-1088(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movabsq	$.L.str.12, %rdi
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	$-1, %rsi
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	-1280(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_any_to_utf8
	movq	%rax, -1104(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-1104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
	movl	$1024, %esi             # imm = 0x400
	leaq	-1088(%rbp), %rdi
	movl	-1092(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -1092(%rbp)
	movq	-64(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_27
# BB#26:                                # %if.then.66
	movq	-32(%rbp), %rdi
	movq	%rdi, -1296(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -1300(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-1092(%rbp), %r9d
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movl	-1300(%rbp), %esi       # 4-byte Reload
	movq	-1312(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-64(%rbp), %rdi
	callq	fclose
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -1316(%rbp)       # 4-byte Spill
	callq	g_object_unref
	movq	$0, -8(%rbp)
	jmp	.LBB0_85
.LBB0_27:                               # %if.end.71
	jmp	.LBB0_29
.LBB0_28:                               # %if.else.72
	movq	-40(%rbp), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	g_filename_display_basename
	movq	-1336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_take_name
.LBB0_29:                               # %if.end.76
	leaq	-1088(%rbp), %rdi
	callq	atoi
	movl	%eax, -52(%rbp)
	cmpl	$1, -52(%rbp)
	jge	.LBB0_31
# BB#30:                                # %if.then.80
	movq	-32(%rbp), %rdi
	movq	%rdi, -1344(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -1348(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-1092(%rbp), %r9d
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movl	-1348(%rbp), %esi       # 4-byte Reload
	movq	-1360(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -1364(%rbp)       # 4-byte Spill
	jmp	.LBB0_85
.LBB0_31:                               # %if.end.85
	movq	$0, -48(%rbp)
	movl	$0, -56(%rbp)
.LBB0_32:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_82
# BB#33:                                # %for.body
                                        #   in Loop: Header=BB0_32 Depth=1
	callq	gimp_gradient_segment_new
	movq	%rax, -1112(%rbp)
	movq	-48(%rbp), %rax
	movq	-1112(%rbp), %rcx
	movq	%rax, 112(%rcx)
	cmpq	$0, -48(%rbp)
	je	.LBB0_35
# BB#34:                                # %if.then.90
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-1112(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 120(%rcx)
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.91
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-1112(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB0_36:                               # %if.end.92
                                        #   in Loop: Header=BB0_32 Depth=1
	movl	$1024, %esi             # imm = 0x400
	leaq	-1088(%rbp), %rdi
	movl	-1092(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1092(%rbp)
	movq	-64(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB0_38
# BB#37:                                # %if.then.97
	movq	-32(%rbp), %rdi
	movq	%rdi, -1376(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -1380(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-1092(%rbp), %r9d
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movl	-1380(%rbp), %esi       # 4-byte Reload
	movq	-1392(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-64(%rbp), %rdi
	callq	fclose
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -1396(%rbp)       # 4-byte Spill
	callq	g_object_unref
	movq	$0, -8(%rbp)
	jmp	.LBB0_85
.LBB0_38:                               # %if.end.102
                                        #   in Loop: Header=BB0_32 Depth=1
	leaq	-1120(%rbp), %rsi
	leaq	-1088(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1112(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	cmpq	$0, -1120(%rbp)
	je	.LBB0_41
# BB#39:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_32 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB0_41
# BB#40:                                # %if.then.108
                                        #   in Loop: Header=BB0_32 Depth=1
	leaq	-1120(%rbp), %rsi
	movq	-1120(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1112(%rbp), %rsi
	movsd	%xmm0, 8(%rsi)
.LBB0_41:                               # %if.end.110
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpq	$0, -1120(%rbp)
	je	.LBB0_44
# BB#42:                                # %land.lhs.true.112
                                        #   in Loop: Header=BB0_32 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB0_44
# BB#43:                                # %if.then.115
                                        #   in Loop: Header=BB0_32 Depth=1
	leaq	-1120(%rbp), %rsi
	movq	-1120(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1112(%rbp), %rsi
	movsd	%xmm0, 16(%rsi)
.LBB0_44:                               # %if.end.117
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpq	$0, -1120(%rbp)
	je	.LBB0_47
# BB#45:                                # %land.lhs.true.119
                                        #   in Loop: Header=BB0_32 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB0_47
# BB#46:                                # %if.then.122
                                        #   in Loop: Header=BB0_32 Depth=1
	leaq	-1120(%rbp), %rsi
	movq	-1120(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1112(%rbp), %rsi
	movsd	%xmm0, 32(%rsi)
.LBB0_47:                               # %if.end.124
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpq	$0, -1120(%rbp)
	je	.LBB0_50
# BB#48:                                # %land.lhs.true.126
                                        #   in Loop: Header=BB0_32 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB0_50
# BB#49:                                # %if.then.129
                                        #   in Loop: Header=BB0_32 Depth=1
	leaq	-1120(%rbp), %rsi
	movq	-1120(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1112(%rbp), %rsi
	movsd	%xmm0, 40(%rsi)
.LBB0_50:                               # %if.end.132
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpq	$0, -1120(%rbp)
	je	.LBB0_53
# BB#51:                                # %land.lhs.true.134
                                        #   in Loop: Header=BB0_32 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB0_53
# BB#52:                                # %if.then.137
                                        #   in Loop: Header=BB0_32 Depth=1
	leaq	-1120(%rbp), %rsi
	movq	-1120(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1112(%rbp), %rsi
	movsd	%xmm0, 48(%rsi)
.LBB0_53:                               # %if.end.140
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpq	$0, -1120(%rbp)
	je	.LBB0_56
# BB#54:                                # %land.lhs.true.142
                                        #   in Loop: Header=BB0_32 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB0_56
# BB#55:                                # %if.then.145
                                        #   in Loop: Header=BB0_32 Depth=1
	leaq	-1120(%rbp), %rsi
	movq	-1120(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1112(%rbp), %rsi
	movsd	%xmm0, 56(%rsi)
.LBB0_56:                               # %if.end.148
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpq	$0, -1120(%rbp)
	je	.LBB0_59
# BB#57:                                # %land.lhs.true.150
                                        #   in Loop: Header=BB0_32 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB0_59
# BB#58:                                # %if.then.153
                                        #   in Loop: Header=BB0_32 Depth=1
	leaq	-1120(%rbp), %rsi
	movq	-1120(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1112(%rbp), %rsi
	movsd	%xmm0, 72(%rsi)
.LBB0_59:                               # %if.end.156
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpq	$0, -1120(%rbp)
	je	.LBB0_62
# BB#60:                                # %land.lhs.true.158
                                        #   in Loop: Header=BB0_32 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB0_62
# BB#61:                                # %if.then.161
                                        #   in Loop: Header=BB0_32 Depth=1
	leaq	-1120(%rbp), %rsi
	movq	-1120(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1112(%rbp), %rsi
	movsd	%xmm0, 80(%rsi)
.LBB0_62:                               # %if.end.165
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpq	$0, -1120(%rbp)
	je	.LBB0_65
# BB#63:                                # %land.lhs.true.167
                                        #   in Loop: Header=BB0_32 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB0_65
# BB#64:                                # %if.then.170
                                        #   in Loop: Header=BB0_32 Depth=1
	leaq	-1120(%rbp), %rsi
	movq	-1120(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1112(%rbp), %rsi
	movsd	%xmm0, 88(%rsi)
.LBB0_65:                               # %if.end.174
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpq	$0, -1120(%rbp)
	je	.LBB0_68
# BB#66:                                # %land.lhs.true.176
                                        #   in Loop: Header=BB0_32 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB0_68
# BB#67:                                # %if.then.179
                                        #   in Loop: Header=BB0_32 Depth=1
	leaq	-1120(%rbp), %rsi
	movq	-1120(%rbp), %rdi
	callq	g_ascii_strtod
	movq	-1112(%rbp), %rsi
	movsd	%xmm0, 96(%rsi)
.LBB0_68:                               # %if.end.183
                                        #   in Loop: Header=BB0_32 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB0_74
# BB#69:                                # %if.then.186
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-1120(%rbp), %rdi
	movl	$.L.str.14, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movb	%al, %cl
	leaq	-1128(%rbp), %rdx
	leaq	-1124(%rbp), %r8
	leaq	-1132(%rbp), %r9
	leaq	-1136(%rbp), %r10
	movb	%cl, -1397(%rbp)        # 1-byte Spill
	movq	%r8, %rcx
	movq	%r9, %r8
	movq	%r10, %r9
	movb	-1397(%rbp), %al        # 1-byte Reload
	callq	__isoc99_sscanf
	movl	%eax, %r11d
	subl	$2, %eax
	movl	%r11d, -1404(%rbp)      # 4-byte Spill
	movl	%eax, -1408(%rbp)       # 4-byte Spill
	je	.LBB0_71
	jmp	.LBB0_86
.LBB0_86:                               # %if.then.186
                                        #   in Loop: Header=BB0_32 Depth=1
	movl	-1404(%rbp), %eax       # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -1412(%rbp)       # 4-byte Spill
	jne	.LBB0_72
	jmp	.LBB0_70
.LBB0_70:                               # %sw.bb
                                        #   in Loop: Header=BB0_32 Depth=1
	movl	-1132(%rbp), %eax
	movq	-1112(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movl	-1136(%rbp), %eax
	movq	-1112(%rbp), %rcx
	movl	%eax, 64(%rcx)
.LBB0_71:                               # %sw.bb.190
                                        #   in Loop: Header=BB0_32 Depth=1
	movl	-1128(%rbp), %eax
	movq	-1112(%rbp), %rcx
	movl	%eax, 104(%rcx)
	movl	-1124(%rbp), %eax
	movq	-1112(%rbp), %rcx
	movl	%eax, 108(%rcx)
	jmp	.LBB0_73
.LBB0_72:                               # %sw.default
	movq	-32(%rbp), %rdi
	movq	%rdi, -1424(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.15, %rdi
	movl	%eax, -1428(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-56(%rbp), %r9d
	movl	-1092(%rbp), %ecx
	movq	-1424(%rbp), %rdi       # 8-byte Reload
	movl	-1428(%rbp), %esi       # 4-byte Reload
	movq	-1440(%rbp), %r8        # 8-byte Reload
	movl	%ecx, -1444(%rbp)       # 4-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movl	-1444(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	g_set_error
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -1448(%rbp)       # 4-byte Spill
	jmp	.LBB0_85
.LBB0_73:                               # %sw.epilog
                                        #   in Loop: Header=BB0_32 Depth=1
	jmp	.LBB0_75
.LBB0_74:                               # %if.else.197
	movq	-32(%rbp), %rdi
	movq	%rdi, -1456(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.15, %rdi
	movl	%eax, -1460(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movl	-56(%rbp), %r9d
	movl	-1092(%rbp), %ecx
	movq	-1456(%rbp), %rdi       # 8-byte Reload
	movl	-1460(%rbp), %esi       # 4-byte Reload
	movq	-1472(%rbp), %r8        # 8-byte Reload
	movl	%ecx, -1476(%rbp)       # 4-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movl	-1476(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	g_set_error
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -1480(%rbp)       # 4-byte Spill
	jmp	.LBB0_85
.LBB0_75:                               # %if.end.202
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_77
# BB#76:                                # %land.lhs.true.204
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-1112(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_79
.LBB0_77:                               # %lor.lhs.false.208
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB0_80
# BB#78:                                # %land.lhs.true.210
                                        #   in Loop: Header=BB0_32 Depth=1
	xorps	%xmm0, %xmm0
	movq	-1112(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_80
.LBB0_79:                               # %if.then.213
	movq	-32(%rbp), %rdi
	movq	%rdi, -1488(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.16, %rdi
	movl	%eax, -1492(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-1488(%rbp), %rdi       # 8-byte Reload
	movl	-1492(%rbp), %esi       # 4-byte Reload
	movq	-1504(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -1508(%rbp)       # 4-byte Spill
	jmp	.LBB0_85
.LBB0_80:                               # %if.end.218
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-1112(%rbp), %rax
	movq	%rax, -48(%rbp)
# BB#81:                                # %for.inc
                                        #   in Loop: Header=BB0_32 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_32
.LBB0_82:                               # %for.end
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB0_84
# BB#83:                                # %if.then.222
	movq	-32(%rbp), %rdi
	movq	%rdi, -1520(%rbp)       # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.16, %rdi
	movl	%eax, -1524(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-1520(%rbp), %rdi       # 8-byte Reload
	movl	-1524(%rbp), %esi       # 4-byte Reload
	movq	-1536(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rdi
	callq	fclose
	movq	$0, -8(%rbp)
	movl	%eax, -1540(%rbp)       # 4-byte Spill
	jmp	.LBB0_85
.LBB0_84:                               # %if.end.227
	movq	-64(%rbp), %rdi
	callq	fclose
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, -1544(%rbp)       # 4-byte Spill
	callq	g_list_prepend
	movq	%rax, -8(%rbp)
.LBB0_85:                               # %return
	movq	-8(%rbp), %rax
	addq	$1552, %rsp             # imm = 0x610
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_gradient_load, .Lfunc_end0-gimp_gradient_load
	.cfi_endproc

	.globl	gimp_gradient_load_svg
	.align	16, 0x90
	.type	gimp_gradient_load_svg,@function
gimp_gradient_load_svg:                 # @gimp_gradient_load_svg
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
	subq	$128, %rsp
	xorl	%eax, %eax
	movl	$24, %ecx
	movl	%ecx, %r8d
	leaq	-64(%rbp), %r9
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%r9, %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	callq	memset
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_gradient_load_svg, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_34
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB1_8
# BB#7:                                 # %if.then.2
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.3
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_gradient_load_svg, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_34
.LBB1_9:                                # %if.end.4
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.5
	jmp	.LBB1_11
.LBB1_11:                               # %do.body.6
	cmpq	$0, -32(%rbp)
	je	.LBB1_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_14
.LBB1_13:                               # %if.then.9
	jmp	.LBB1_15
.LBB1_14:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_gradient_load_svg, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_34
.LBB1_15:                               # %if.end.11
	jmp	.LBB1_16
.LBB1_16:                               # %do.end.12
	movabsq	$markup_parser, %rdi
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_xml_parser_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_xml_parser_parse_file
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_xml_parser_free
	cmpl	$0, -68(%rbp)
	je	.LBB1_19
# BB#17:                                # %land.lhs.true
	cmpq	$0, -56(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.17
	movq	-32(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.17, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB1_23
.LBB1_19:                               # %if.else.21
	cmpq	$0, -32(%rbp)
	je	.LBB1_22
# BB#20:                                # %land.lhs.true.23
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_22
# BB#21:                                # %if.then.25
	movabsq	$.L.str.18, %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-80(%rbp), %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB1_22:                               # %if.end.30
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.31
	cmpq	$0, -64(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.33
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB1_25:                               # %if.end.35
	cmpq	$0, -48(%rbp)
	je	.LBB1_33
# BB#26:                                # %if.then.37
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB1_27:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB1_32
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB1_27 Depth=1
	jmp	.LBB1_29
.LBB1_29:                               # %do.body.40
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$40, %eax
	movl	%eax, %edi
	movq	-88(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	g_slice_free1
# BB#30:                                # %do.end.41
                                        #   in Loop: Header=BB1_27 Depth=1
	jmp	.LBB1_31
.LBB1_31:                               # %for.inc
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB1_27
.LBB1_32:                               # %for.end
	movq	-48(%rbp), %rdi
	callq	g_list_free
.LBB1_33:                               # %if.end.43
	movq	-56(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -8(%rbp)
.LBB1_34:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_gradient_load_svg, .Lfunc_end1-gimp_gradient_load_svg
	.cfi_endproc

	.align	16, 0x90
	.type	svg_parser_start_element,@function
svg_parser_start_element:               # @svg_parser_start_element
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx)
	jne	.LBB2_11
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	movl	$.L.str.19, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_11
# BB#2:                                 # %if.then
	movq	$0, -64(%rbp)
.LBB2_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB2_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -73(%rbp)          # 1-byte Spill
.LBB2_5:                                # %land.end
                                        #   in Loop: Header=BB2_3 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_6
	jmp	.LBB2_10
.LBB2_6:                                # %while.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.20, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_9
# BB#7:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_9
# BB#8:                                 # %if.then.7
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB2_9:                                # %if.end
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_3
.LBB2_10:                               # %while.end
	callq	gimp_gradient_get_type
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.22, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB2_20
.LBB2_11:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_19
# BB#12:                                # %land.lhs.true.14
	movq	-16(%rbp), %rdi
	movl	$.L.str.23, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_19
# BB#13:                                # %if.then.17
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	svg_parse_gradient_stop
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB2_18
# BB#14:                                # %if.then.20
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB2_16
# BB#15:                                # %cond.true
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB2_17
.LBB2_16:                               # %cond.false
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB2_17:                               # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB2_18:                               # %if.end.29
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-56(%rbp), %rsi
	movq	%rax, 16(%rsi)
.LBB2_19:                               # %if.end.33
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.34
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	svg_parser_start_element, .Lfunc_end2-svg_parser_start_element
	.cfi_endproc

	.align	16, 0x90
	.type	svg_parser_end_element,@function
svg_parser_end_element:                 # @svg_parser_end_element
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	cmpq	$0, (%rcx)
	je	.LBB3_12
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	movl	$.L.str.19, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_12
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	svg_parser_gradient_segments
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, 32(%rdi)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB3_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_5
.LBB3_5:                                # %do.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$40, %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	g_slice_free1
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_3
.LBB3_8:                                # %for.end
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_list_free
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB3_10
# BB#9:                                 # %if.then.10
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-40(%rbp), %rsi
	movq	%rax, 8(%rsi)
	jmp	.LBB3_11
.LBB3_10:                               # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB3_11:                               # %if.end
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.LBB3_12:                               # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	svg_parser_end_element, .Lfunc_end3-svg_parser_end_element
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	svg_parse_gradient_stop,@function
svg_parse_gradient_stop:                # @svg_parse_gradient_stop
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
	subq	$64, %rsp
	movl	$40, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_set_alpha
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB4_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB4_3:                                # %land.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_20
.LBB4_4:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.24, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_15
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_ascii_strtod
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	cmpq	$0, -32(%rbp)
	je	.LBB4_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB4_8
# BB#7:                                 # %if.then.7
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
.LBB4_8:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB4_14
.LBB4_10:                               # %cond.false
                                        #   in Loop: Header=BB4_1 Depth=1
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB4_12
# BB#11:                                # %cond.true.15
                                        #   in Loop: Header=BB4_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB4_13
.LBB4_12:                               # %cond.false.16
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB4_13:                               # %cond.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB4_14:                               # %cond.end.18
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB4_19
.LBB4_15:                               # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.25, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_17
# BB#16:                                # %if.then.24
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	svg_parse_gradient_stop_style
	jmp	.LBB4_18
.LBB4_17:                               # %if.else.25
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	callq	svg_parse_gradient_stop_style_prop
.LBB4_18:                               # %if.end.26
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.27
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB4_1
.LBB4_20:                               # %while.end
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	svg_parse_gradient_stop, .Lfunc_end4-svg_parse_gradient_stop
	.cfi_endproc

	.align	16, 0x90
	.type	svg_parse_gradient_stop_style,@function
svg_parse_gradient_stop_style:          # @svg_parse_gradient_stop_style
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
                                        #     Child Loop BB5_6 Depth 2
                                        #     Child Loop BB5_12 Depth 2
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB5_23
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_3
.LBB5_3:                                # %while.cond.1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB5_5
# BB#4:                                 # %while.body.3
                                        #   in Loop: Header=BB5_3 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_3
.LBB5_5:                                # %while.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB5_6:                                # %for.cond
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB5_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB5_6 Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$59, %ecx
	setne	%dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB5_8:                                # %land.end
                                        #   in Loop: Header=BB5_6 Depth=2
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_9
	jmp	.LBB5_11
.LBB5_9:                                # %for.body
                                        #   in Loop: Header=BB5_6 Depth=2
	jmp	.LBB5_10
.LBB5_10:                               # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB5_6
.LBB5_11:                               # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB5_12:                               # %for.cond.10
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	cmpq	-24(%rbp), %rdx
	movb	%cl, -50(%rbp)          # 1-byte Spill
	jae	.LBB5_14
# BB#13:                                # %land.rhs.13
                                        #   in Loop: Header=BB5_12 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	setne	%dl
	movb	%dl, -50(%rbp)          # 1-byte Spill
.LBB5_14:                               # %land.end.17
                                        #   in Loop: Header=BB5_12 Depth=2
	movb	-50(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_15
	jmp	.LBB5_17
.LBB5_15:                               # %for.body.18
                                        #   in Loop: Header=BB5_12 Depth=2
	jmp	.LBB5_16
.LBB5_16:                               # %for.inc.19
                                        #   in Loop: Header=BB5_12 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_12
.LBB5_17:                               # %for.end.21
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.LBB5_20
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	.LBB5_20
# BB#19:                                # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strndup
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %r9d
	cmpl	$59, %r9d
	cmovel	%r8d, %edx
	movslq	%edx, %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	svg_parse_gradient_stop_style_prop
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB5_20:                               # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$59, %ecx
	jne	.LBB5_22
# BB#21:                                # %if.then.38
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB5_22:                               # %if.end.40
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_1
.LBB5_23:                               # %while.end.41
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	svg_parse_gradient_stop_style, .Lfunc_end5-svg_parse_gradient_stop_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	svg_parse_gradient_stop_style_prop,@function
svg_parse_gradient_stop_style_prop:     # @svg_parse_gradient_stop_style_prop
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
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.26, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_rgb_parse_css
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB6_13
.LBB6_2:                                # %if.else
	movq	-16(%rbp), %rdi
	movl	$.L.str.27, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_12
# BB#3:                                 # %if.then.4
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, -32(%rbp)
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB6_11
# BB#4:                                 # %if.then.8
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jbe	.LBB6_6
# BB#5:                                 # %cond.true
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB6_10
.LBB6_6:                                # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB6_8
# BB#7:                                 # %cond.true.12
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB6_9
.LBB6_8:                                # %cond.false.13
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB6_9:                                # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB6_10:                               # %cond.end.14
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	gimp_rgb_set_alpha
.LBB6_11:                               # %if.end
	jmp	.LBB6_12
.LBB6_12:                               # %if.end.16
	jmp	.LBB6_13
.LBB6_13:                               # %if.end.17
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	svg_parse_gradient_stop_style_prop, .Lfunc_end6-svg_parse_gradient_stop_style_prop
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	svg_parser_gradient_segments,@function
svg_parser_gradient_segments:           # @svg_parser_gradient_segments
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB7_15
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_segment_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	24(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movq	32(%rcx), %rcx
	movq	%rcx, 56(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, 72(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movq	24(%rcx), %rdx
	movq	%rdx, 88(%rax)
	movq	32(%rcx), %rcx
	movq	%rcx, 96(%rax)
	cmpq	$0, -16(%rbp)
	je	.LBB7_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_5
.LBB7_5:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB7_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_12
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB7_6 Depth=1
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	16(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	callq	gimp_gradient_segment_new
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 120(%rcx)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, 72(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movq	24(%rcx), %rdx
	movq	%rdx, 88(%rax)
	movq	32(%rcx), %rcx
	movq	%rcx, 96(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, 32(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	24(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movq	32(%rcx), %rcx
	movq	%rcx, 56(%rax)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB7_6 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %cond.true.16
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false.18
                                        #   in Loop: Header=BB7_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB7_11
.LBB7_11:                               # %cond.end.19
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB7_6
.LBB7_12:                               # %for.end
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	16(%rax), %xmm2
	divsd	%xmm1, %xmm2
	movq	-24(%rbp), %rax
	movsd	%xmm2, 8(%rax)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_14
# BB#13:                                # %if.then.27
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, 72(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movq	24(%rcx), %rdx
	movq	%rdx, 88(%rax)
	movq	32(%rcx), %rcx
	movq	%rcx, 96(%rax)
.LBB7_14:                               # %if.end.30
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	svg_parser_gradient_segments, .Lfunc_end7-svg_parser_gradient_segments
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_gradient_load,@object # @__func__.gimp_gradient_load
.L__func__.gimp_gradient_load:
	.asciz	"gimp_gradient_load"
	.size	.L__func__.gimp_gradient_load, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"filename != NULL"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"g_path_is_absolute (filename)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"rb"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Fatal parse error in gradient file '%s': Read error in line %d."
	.size	.L.str.6, 64

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP Gradient"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Fatal parse error in gradient file '%s': Not a GIMP gradient file."
	.size	.L.str.8, 67

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"mime-type"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"application/x-gimp-gradient"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Name: "
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Invalid UTF-8 string in gradient file '%s'."
	.size	.L.str.12, 44

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Fatal parse error in gradient file '%s': File is corrupt in line %d."
	.size	.L.str.13, 69

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%d %d %d %d"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Fatal parse error in gradient file '%s': Corrupt segment %d in line %d."
	.size	.L.str.15, 72

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Gradient file '%s' is corrupt: Segments do not span the range 0-1."
	.size	.L.str.16, 67

	.type	.L__func__.gimp_gradient_load_svg,@object # @__func__.gimp_gradient_load_svg
.L__func__.gimp_gradient_load_svg:
	.asciz	"gimp_gradient_load_svg"
	.size	.L__func__.gimp_gradient_load_svg, 23

	.type	markup_parser,@object   # @markup_parser
	.section	.rodata,"a",@progbits
	.align	8
markup_parser:
	.quad	svg_parser_start_element
	.quad	svg_parser_end_element
	.quad	0
	.quad	0
	.quad	0
	.size	markup_parser, 40

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"No linear gradients found in '%s'"
	.size	.L.str.17, 34

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Failed to import gradients from '%s': %s"
	.size	.L.str.18, 41

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"linearGradient"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"id"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"name"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"image/svg+xml"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"stop"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"offset"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"style"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"stop-color"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"stop-opacity"
	.size	.L.str.27, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
