	.text
	.file	"file-save.bc"
	.globl	file_save
	.align	16, 0x90
	.type	file_save,@function
file_save:                              # @file_save
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
	pushq	%r12
	pushq	%rbx
	subq	$528, %rsp              # imm = 0x210
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movq	40(%rbp), %rax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movl	%r9d, -84(%rbp)
	movl	%ebx, -88(%rbp)
	movl	%r11d, -92(%rbp)
	movl	%r10d, -96(%rbp)
	movq	%rax, -104(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -164(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -164(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_save, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -36(%rbp)
	jmp	.LBB0_102
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -188(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -188(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_save, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -36(%rbp)
	jmp	.LBB0_102
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpq	$0, -64(%rbp)
	je	.LBB0_34
# BB#26:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.49
	movl	$0, -212(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.50
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_31
# BB#29:                                # %land.lhs.true.53
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.57
	movl	$1, -212(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.58
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB0_32:                               # %if.end.60
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.61
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB0_35
.LBB0_34:                               # %if.then.64
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_save, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -36(%rbp)
	jmp	.LBB0_102
.LBB0_36:                               # %if.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %do.end.67
	jmp	.LBB0_38
.LBB0_38:                               # %do.body.68
	cmpq	$0, -72(%rbp)
	je	.LBB0_40
# BB#39:                                # %if.then.70
	jmp	.LBB0_41
.LBB0_40:                               # %if.else.71
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_save, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -36(%rbp)
	jmp	.LBB0_102
.LBB0_41:                               # %if.end.72
	jmp	.LBB0_42
.LBB0_42:                               # %do.end.73
	jmp	.LBB0_43
.LBB0_43:                               # %do.body.74
	movq	-80(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB0_45
# BB#44:                                # %if.then.83
	movl	$0, -236(%rbp)
	jmp	.LBB0_50
.LBB0_45:                               # %if.else.84
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_48
# BB#46:                                # %land.lhs.true.87
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB0_48
# BB#47:                                # %if.then.91
	movl	$1, -236(%rbp)
	jmp	.LBB0_49
.LBB0_48:                               # %if.else.92
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB0_49:                               # %if.end.94
	jmp	.LBB0_50
.LBB0_50:                               # %if.end.95
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB0_52
# BB#51:                                # %if.then.98
	jmp	.LBB0_53
.LBB0_52:                               # %if.else.99
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_save, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -36(%rbp)
	jmp	.LBB0_102
.LBB0_53:                               # %if.end.100
	jmp	.LBB0_54
.LBB0_54:                               # %do.end.101
	jmp	.LBB0_55
.LBB0_55:                               # %do.body.102
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -92(%rbp)
	movb	%cl, -257(%rbp)         # 1-byte Spill
	je	.LBB0_57
# BB#56:                                # %land.rhs
	cmpl	$0, -96(%rbp)
	setne	%al
	movb	%al, -257(%rbp)         # 1-byte Spill
.LBB0_57:                               # %land.end
	movb	-257(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	jne	.LBB0_59
# BB#58:                                # %if.then.106
	jmp	.LBB0_60
.LBB0_59:                               # %if.else.107
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_save, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -36(%rbp)
	jmp	.LBB0_102
.LBB0_60:                               # %if.end.108
	jmp	.LBB0_61
.LBB0_61:                               # %do.end.109
	jmp	.LBB0_62
.LBB0_62:                               # %do.body.110
	cmpq	$0, -104(%rbp)
	je	.LBB0_64
# BB#63:                                # %lor.lhs.false.112
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_65
.LBB0_64:                               # %if.then.114
	jmp	.LBB0_66
.LBB0_65:                               # %if.else.115
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_save, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -36(%rbp)
	jmp	.LBB0_102
.LBB0_66:                               # %if.end.116
	jmp	.LBB0_67
.LBB0_67:                               # %do.end.117
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB0_69
# BB#68:                                # %if.then.120
	movl	$0, -36(%rbp)
	jmp	.LBB0_102
.LBB0_69:                               # %if.end.121
	movq	-72(%rbp), %rdi
	callq	file_utils_filename_from_uri
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB0_77
# BB#70:                                # %if.then.124
	movl	$16, %esi
	movq	-136(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB0_76
# BB#71:                                # %if.then.127
	movl	$1, %esi
	movq	-136(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	jne	.LBB0_73
# BB#72:                                # %if.then.130
	movq	-104(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.8, %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	-276(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -124(%rbp)
	jmp	.LBB0_101
.LBB0_73:                               # %if.end.133
	movl	$2, %esi
	movq	-136(%rbp), %rdi
	callq	g_access
	cmpl	$0, %eax
	je	.LBB0_75
# BB#74:                                # %if.then.136
	movq	-104(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movl	$2, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -124(%rbp)
	jmp	.LBB0_101
.LBB0_75:                               # %if.end.140
	jmp	.LBB0_76
.LBB0_76:                               # %if.end.141
	jmp	.LBB0_78
.LBB0_77:                               # %if.else.142
	movq	-72(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -136(%rbp)
.LBB0_78:                               # %if.end.144
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-56(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_image_get_ID
	movl	%eax, -140(%rbp)
	movq	-112(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movl	%eax, -144(%rbp)
	movq	-56(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	520(%rsi), %rdi
	movq	-48(%rbp), %rsi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_get_user_context
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_int32_get_type
	movl	-84(%rbp), %r8d
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movl	%r8d, -364(%rbp)        # 4-byte Spill
	callq	gimp_image_id_get_type
	movl	-140(%rbp), %r8d
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movl	%r8d, -380(%rbp)        # 4-byte Spill
	callq	gimp_drawable_id_get_type
	movl	$64, %r8d
	movl	%r8d, %ecx
	movl	$4, %r8d
	movl	%r8d, %edx
	movl	-144(%rbp), %r8d
	movq	-136(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-320(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-328(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-336(%rbp), %r11        # 8-byte Reload
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movq	-344(%rbp), %rbx        # 8-byte Reload
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movq	-352(%rbp), %r14        # 8-byte Reload
	movl	%r8d, -420(%rbp)        # 4-byte Spill
	movq	%r14, %r8
	movq	-360(%rbp), %r9         # 8-byte Reload
	movl	-364(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, (%rsp)
	movq	-376(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movl	-380(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 16(%rsp)
	movq	%rax, 24(%rsp)
	movl	-420(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 32(%rsp)
	movq	$64, 40(%rsp)
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	$64, 56(%rsp)
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, 64(%rsp)
	movq	$4, 72(%rsp)
	movb	$0, %al
	callq	gimp_pdb_execute_procedure_by_name
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_value_get_enum
	movl	%eax, -124(%rbp)
	movq	-120(%rbp), %rdi
	callq	g_value_array_free
	cmpl	$3, -124(%rbp)
	jne	.LBB0_94
# BB#79:                                # %if.then.159
	cmpl	$0, -88(%rbp)
	je	.LBB0_81
# BB#80:                                # %if.then.163
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_set_uri
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_set_save_proc
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_image_set_imported_uri
	movq	-56(%rbp), %rdi
	callq	gimp_image_clean_all
	jmp	.LBB0_87
.LBB0_81:                               # %if.else.164
	cmpl	$0, -92(%rbp)
	je	.LBB0_83
# BB#82:                                # %if.then.166
	movq	-56(%rbp), %rdi
	callq	gimp_image_export_clean_all
	movq	-56(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_object_name_changed
	jmp	.LBB0_86
.LBB0_83:                               # %if.else.169
	cmpl	$0, -96(%rbp)
	je	.LBB0_85
# BB#84:                                # %if.then.171
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_set_exported_uri
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_set_export_proc
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_image_set_imported_uri
	movq	-56(%rbp), %rdi
	callq	gimp_image_export_clean_all
.LBB0_85:                               # %if.end.172
	jmp	.LBB0_86
.LBB0_86:                               # %if.end.173
	jmp	.LBB0_87
.LBB0_87:                               # %if.end.174
	cmpl	$0, -92(%rbp)
	jne	.LBB0_89
# BB#88:                                # %lor.lhs.false.176
	cmpl	$0, -96(%rbp)
	je	.LBB0_90
.LBB0_89:                               # %if.then.178
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_exported
	jmp	.LBB0_91
.LBB0_90:                               # %if.else.179
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_saved
.LBB0_91:                               # %if.end.180
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	544(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_document_list_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	248(%rax), %rdx
	callq	gimp_document_list_add_uri
	movq	%rax, -256(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 32(%rax)
	jne	.LBB0_93
# BB#92:                                # %if.then.189
	movq	-256(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	248(%rax), %rsi
	movq	-56(%rbp), %rdx
	callq	gimp_imagefile_save_thumbnail
	movl	%eax, -452(%rbp)        # 4-byte Spill
.LBB0_93:                               # %if.end.192
	jmp	.LBB0_100
.LBB0_94:                               # %if.else.193
	cmpl	$4, -124(%rbp)
	je	.LBB0_99
# BB#95:                                # %if.then.195
	cmpq	$0, -104(%rbp)
	je	.LBB0_98
# BB#96:                                # %land.lhs.true.197
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_98
# BB#97:                                # %if.then.199
	movq	-104(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -468(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-80(%rbp), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_procedure_get_label
	movl	$24, %edx
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movl	-468(%rbp), %esi        # 4-byte Reload
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
.LBB0_98:                               # %if.end.203
	jmp	.LBB0_99
.LBB0_99:                               # %if.end.204
	jmp	.LBB0_100
.LBB0_100:                              # %if.end.205
	movq	-56(%rbp), %rdi
	callq	gimp_image_flush
	movq	-56(%rbp), %rdi
	callq	g_object_unref
.LBB0_101:                              # %out
	movq	-136(%rbp), %rdi
	callq	g_free
	movl	-124(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB0_102:                              # %return
	movl	-36(%rbp), %eax
	addq	$528, %rsp              # imm = 0x210
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	file_save, .Lfunc_end0-file_save
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-File"
	.size	.L.str, 10

	.type	.L__func__.file_save,@object # @__func__.file_save
.L__func__.file_save:
	.asciz	"file_save"
	.size	.L__func__.file_save, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"uri != NULL"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_PLUG_IN_PROCEDURE (file_proc)"
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(export_backward && export_forward) == FALSE"
	.size	.L.str.6, 45

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.7, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Not a regular file"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s plug-in could not save image"
	.size	.L.str.9, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
