	.text
	.file	"file-open.bc"
	.globl	file_open_image
	.align	16, 0x90
	.type	file_open_image,@function
file_open_image:                        # @file_open_image
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
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movq	48(%rbp), %rax
	movq	40(%rbp), %r10
	movq	32(%rbp), %r11
	movl	24(%rbp), %ebx
	movq	16(%rbp), %r14
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movq	%r14, -88(%rbp)
	movl	%ebx, -92(%rbp)
	movq	%r11, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	%rax, -120(%rbp)
	movq	$0, -144(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
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
	movabsq	$.L__func__.file_open_image, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB0_88
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_context_get_type
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
	movabsq	$.L__func__.file_open_image, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB0_88
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpq	$0, -56(%rbp)
	je	.LBB0_34
# BB#26:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
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
	movabsq	$.L__func__.file_open_image, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB0_88
.LBB0_36:                               # %if.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %do.end.67
	jmp	.LBB0_38
.LBB0_38:                               # %do.body.68
	cmpq	$0, -104(%rbp)
	je	.LBB0_40
# BB#39:                                # %if.then.70
	jmp	.LBB0_41
.LBB0_40:                               # %if.else.71
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_image, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB0_88
.LBB0_41:                               # %if.end.72
	jmp	.LBB0_42
.LBB0_42:                               # %do.end.73
	jmp	.LBB0_43
.LBB0_43:                               # %do.body.74
	cmpq	$0, -120(%rbp)
	je	.LBB0_45
# BB#44:                                # %lor.lhs.false.76
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_46
.LBB0_45:                               # %if.then.78
	jmp	.LBB0_47
.LBB0_46:                               # %if.else.79
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_image, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB0_88
.LBB0_47:                               # %if.end.80
	jmp	.LBB0_48
.LBB0_48:                               # %do.end.81
	movq	-104(%rbp), %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rdi
	callq	file_utils_filename_from_uri
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB0_56
# BB#49:                                # %if.then.84
	movl	$16, %esi
	movq	-136(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB0_55
# BB#50:                                # %if.then.87
	movl	$1, %esi
	movq	-136(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	jne	.LBB0_52
# BB#51:                                # %if.then.90
	movq	-136(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	-228(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -32(%rbp)
	jmp	.LBB0_88
.LBB0_52:                               # %if.end.93
	movl	$4, %esi
	movq	-136(%rbp), %rdi
	callq	g_access
	cmpl	$0, %eax
	je	.LBB0_54
# BB#53:                                # %if.then.96
	movq	-136(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movl	$2, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	-244(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -32(%rbp)
	jmp	.LBB0_88
.LBB0_54:                               # %if.end.100
	jmp	.LBB0_55
.LBB0_55:                               # %if.end.101
	jmp	.LBB0_57
.LBB0_56:                               # %if.else.102
	movq	-64(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -136(%rbp)
.LBB0_57:                               # %if.end.104
	cmpq	$0, -88(%rbp)
	jne	.LBB0_59
# BB#58:                                # %if.then.106
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movq	64(%rax), %rdi
	movq	-64(%rbp), %rsi
	movq	-120(%rbp), %rdx
	callq	file_procedure_find
	movq	%rax, -88(%rbp)
.LBB0_59:                               # %if.end.108
	cmpq	$0, -88(%rbp)
	jne	.LBB0_61
# BB#60:                                # %if.then.110
	movq	-136(%rbp), %rdi
	callq	g_free
	movq	$0, -32(%rbp)
	jmp	.LBB0_88
.LBB0_61:                               # %if.end.111
	cmpq	$0, -56(%rbp)
	je	.LBB0_63
# BB#62:                                # %if.then.113
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
.LBB0_63:                               # %if.end.115
	movq	-40(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_int32_get_type
	movl	$64, %r8d
	movl	%r8d, %ecx
	movl	$4, %r8d
	movl	%r8d, %edx
	movl	-92(%rbp), %r8d
	movq	-136(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-256(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-272(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-280(%rbp), %r11        # 8-byte Reload
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movq	-264(%rbp), %rbx        # 8-byte Reload
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movq	-288(%rbp), %r14        # 8-byte Reload
	movl	%r8d, -324(%rbp)        # 4-byte Spill
	movq	%r14, %r8
	movq	%rax, %r9
	movl	-324(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, (%rsp)
	movq	$64, 8(%rsp)
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$64, 24(%rsp)
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	$4, 40(%rsp)
	movb	$0, %al
	callq	gimp_pdb_execute_procedure_by_name
	movq	%rax, -128(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_65
# BB#64:                                # %if.then.120
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_remove_weak_pointer
.LBB0_65:                               # %if.end.122
	movq	-136(%rbp), %rdi
	callq	g_free
	movq	-128(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	g_value_get_enum
	movq	-104(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-104(%rbp), %rdi
	cmpl	$3, (%rdi)
	jne	.LBB0_77
# BB#66:                                # %if.then.125
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_image
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB0_72
# BB#67:                                # %if.then.130
	movq	-144(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	file_open_sanitize_image
	movq	-144(%rbp), %rdi
	callq	gimp_image_get_load_proc
	cmpq	$0, %rax
	jne	.LBB0_69
# BB#68:                                # %if.then.133
	movq	-144(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_image_set_load_proc
.LBB0_69:                               # %if.end.134
	movq	-144(%rbp), %rdi
	callq	gimp_image_get_load_proc
	movq	%rax, -88(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB0_71
# BB#70:                                # %if.then.137
	movq	-88(%rbp), %rax
	movq	248(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB0_71:                               # %if.end.139
	jmp	.LBB0_76
.LBB0_72:                               # %if.else.140
	cmpq	$0, -120(%rbp)
	je	.LBB0_75
# BB#73:                                # %land.lhs.true.142
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_75
# BB#74:                                # %if.then.144
	movq	-120(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-88(%rbp), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_procedure_get_label
	movl	$24, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movl	-340(%rbp), %esi        # 4-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
.LBB0_75:                               # %if.end.148
	movq	-104(%rbp), %rax
	movl	$0, (%rax)
.LBB0_76:                               # %if.end.149
	jmp	.LBB0_83
.LBB0_77:                               # %if.else.150
	movq	-104(%rbp), %rax
	cmpl	$4, (%rax)
	je	.LBB0_82
# BB#78:                                # %if.then.152
	cmpq	$0, -120(%rbp)
	je	.LBB0_81
# BB#79:                                # %land.lhs.true.154
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_81
# BB#80:                                # %if.then.156
	movq	-120(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.8, %rdi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-88(%rbp), %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_procedure_get_label
	movl	$24, %edx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movl	-364(%rbp), %esi        # 4-byte Reload
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
.LBB0_81:                               # %if.end.160
	jmp	.LBB0_82
.LBB0_82:                               # %if.end.161
	jmp	.LBB0_83
.LBB0_83:                               # %if.end.162
	movq	-128(%rbp), %rdi
	callq	g_value_array_free
	cmpq	$0, -144(%rbp)
	je	.LBB0_87
# BB#84:                                # %if.then.164
	movq	-144(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-92(%rbp), %ecx
	callq	file_open_handle_color_profile
	movq	-88(%rbp), %rdi
	callq	file_open_file_proc_is_import
	cmpl	$0, %eax
	je	.LBB0_86
# BB#85:                                # %if.then.167
	movq	-144(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_image_set_imported_uri
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-144(%rbp), %rdi
	callq	gimp_image_set_uri
.LBB0_86:                               # %if.end.168
	jmp	.LBB0_87
.LBB0_87:                               # %if.end.169
	movq	-144(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_88:                               # %return
	movq	-32(%rbp), %rax
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	file_open_image, .Lfunc_end0-file_open_image
	.cfi_endproc

	.align	16, 0x90
	.type	file_open_sanitize_image,@function
file_open_sanitize_image:               # @file_open_sanitize_image
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
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_image_set_uri
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_free
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_is_enabled
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_4:                                # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_thaw
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jmp	.LBB1_3
.LBB1_5:                                # %while.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_clean_all
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-28(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_image_invalidate
	movq	-8(%rbp), %rdi
	callq	gimp_image_flush
	movq	-8(%rbp), %rdi
	callq	gimp_image_invalidate_previews
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	file_open_sanitize_image, .Lfunc_end1-file_open_sanitize_image
	.cfi_endproc

	.align	16, 0x90
	.type	file_open_handle_color_profile,@function
file_open_handle_color_profile:         # @file_open_handle_color_profile
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
	movabsq	$.L.str.21, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_image_parasite_find
	cmpq	$0, %rax
	je	.LBB2_8
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_disable
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	32(%rdi), %rdi
	movl	376(%rdi), %ecx
	testl	%ecx, %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	je	.LBB2_2
	jmp	.LBB2_9
.LBB2_9:                                # %if.then
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB2_5
	jmp	.LBB2_10
.LBB2_10:                               # %if.then
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB2_6
	jmp	.LBB2_7
.LBB2_2:                                # %sw.bb
	cmpl	$0, -28(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.2
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	file_open_profile_apply_rgb
.LBB2_4:                                # %if.end
	jmp	.LBB2_7
.LBB2_5:                                # %sw.bb.3
	jmp	.LBB2_7
.LBB2_6:                                # %sw.bb.4
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	file_open_profile_apply_rgb
.LBB2_7:                                # %sw.epilog
	movq	-8(%rbp), %rdi
	callq	gimp_image_clean_all
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_enable
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB2_8:                                # %if.end.6
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	file_open_handle_color_profile, .Lfunc_end2-file_open_handle_color_profile
	.cfi_endproc

	.align	16, 0x90
	.type	file_open_file_proc_is_import,@function
file_open_file_proc_is_import:          # @file_open_file_proc_is_import
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movb	%cl, -9(%rbp)           # 1-byte Spill
	je	.LBB3_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	cmpq	$0, 248(%rdx)
	movb	%cl, -9(%rbp)           # 1-byte Spill
	je	.LBB3_3
# BB#2:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movq	248(%rax), %rdi
	movl	$.L.str.25, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB3_3:                                # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	file_open_file_proc_is_import, .Lfunc_end3-file_open_file_proc_is_import
	.cfi_endproc

	.globl	file_open_thumbnail
	.align	16, 0x90
	.type	file_open_thumbnail,@function
file_open_thumbnail:                    # @file_open_thumbnail
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
	pushq	%r14
	pushq	%rbx
	subq	$464, %rsp              # imm = 0x1D0
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
	movq	48(%rbp), %rax
	movq	40(%rbp), %r10
	movq	32(%rbp), %r11
	movq	24(%rbp), %rbx
	movq	16(%rbp), %r14
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r14, -80(%rbp)
	movq	%rbx, -88(%rbp)
	movq	%r11, -96(%rbp)
	movq	%r10, -104(%rbp)
	movq	%rax, -112(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_thumbnail, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB4_134
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -172(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -172(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_thumbnail, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB4_134
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.body.39
	cmpq	$0, -48(%rbp)
	je	.LBB4_34
# BB#26:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB4_28
# BB#27:                                # %if.then.49
	movl	$0, -196(%rbp)
	jmp	.LBB4_33
.LBB4_28:                               # %if.else.50
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_31
# BB#29:                                # %land.lhs.true.53
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB4_31
# BB#30:                                # %if.then.57
	movl	$1, -196(%rbp)
	jmp	.LBB4_32
.LBB4_31:                               # %if.else.58
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB4_32:                               # %if.end.60
	jmp	.LBB4_33
.LBB4_33:                               # %if.end.61
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB4_35
.LBB4_34:                               # %if.then.64
	jmp	.LBB4_36
.LBB4_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_thumbnail, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB4_134
.LBB4_36:                               # %if.end.66
	jmp	.LBB4_37
.LBB4_37:                               # %do.end.67
	jmp	.LBB4_38
.LBB4_38:                               # %do.body.68
	cmpq	$0, -72(%rbp)
	je	.LBB4_40
# BB#39:                                # %if.then.70
	jmp	.LBB4_41
.LBB4_40:                               # %if.else.71
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_thumbnail, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB4_134
.LBB4_41:                               # %if.end.72
	jmp	.LBB4_42
.LBB4_42:                               # %do.end.73
	jmp	.LBB4_43
.LBB4_43:                               # %do.body.74
	cmpq	$0, -80(%rbp)
	je	.LBB4_45
# BB#44:                                # %if.then.76
	jmp	.LBB4_46
.LBB4_45:                               # %if.else.77
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_thumbnail, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB4_134
.LBB4_46:                               # %if.end.78
	jmp	.LBB4_47
.LBB4_47:                               # %do.end.79
	jmp	.LBB4_48
.LBB4_48:                               # %do.body.80
	cmpq	$0, -88(%rbp)
	je	.LBB4_50
# BB#49:                                # %if.then.82
	jmp	.LBB4_51
.LBB4_50:                               # %if.else.83
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_thumbnail, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB4_134
.LBB4_51:                               # %if.end.84
	jmp	.LBB4_52
.LBB4_52:                               # %do.end.85
	jmp	.LBB4_53
.LBB4_53:                               # %do.body.86
	cmpq	$0, -96(%rbp)
	je	.LBB4_55
# BB#54:                                # %if.then.88
	jmp	.LBB4_56
.LBB4_55:                               # %if.else.89
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_thumbnail, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB4_134
.LBB4_56:                               # %if.end.90
	jmp	.LBB4_57
.LBB4_57:                               # %do.end.91
	jmp	.LBB4_58
.LBB4_58:                               # %do.body.92
	cmpq	$0, -104(%rbp)
	je	.LBB4_60
# BB#59:                                # %if.then.94
	jmp	.LBB4_61
.LBB4_60:                               # %if.else.95
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_thumbnail, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB4_134
.LBB4_61:                               # %if.end.96
	jmp	.LBB4_62
.LBB4_62:                               # %do.end.97
	jmp	.LBB4_63
.LBB4_63:                               # %do.body.98
	cmpq	$0, -112(%rbp)
	je	.LBB4_65
# BB#64:                                # %lor.lhs.false.100
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB4_66
.LBB4_65:                               # %if.then.102
	jmp	.LBB4_67
.LBB4_66:                               # %if.else.103
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_thumbnail, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB4_134
.LBB4_67:                               # %if.end.104
	jmp	.LBB4_68
.LBB4_68:                               # %do.end.105
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	movl	$0, (%rcx)
	movq	-88(%rbp), %rcx
	movl	$0, (%rcx)
	movq	-96(%rbp), %rcx
	movl	$-1, (%rcx)
	movq	-104(%rbp), %rcx
	movl	$-1, (%rcx)
	movq	-32(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	64(%rcx), %rdi
	movq	-56(%rbp), %rsi
	callq	file_procedure_find
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB4_70
# BB#69:                                # %lor.lhs.false.108
	movq	-120(%rbp), %rax
	cmpq	$0, 280(%rax)
	jne	.LBB4_71
.LBB4_70:                               # %if.then.110
	movq	$0, -24(%rbp)
	jmp	.LBB4_134
.LBB4_71:                               # %if.end.111
	movq	-32(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-120(%rbp), %rax
	movq	280(%rax), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB4_133
# BB#72:                                # %land.lhs.true.115
	movq	-128(%rbp), %rax
	cmpl	$2, 96(%rax)
	jl	.LBB4_133
# BB#73:                                # %land.lhs.true.117
	movq	-128(%rbp), %rax
	cmpl	$1, 112(%rax)
	jl	.LBB4_133
# BB#74:                                # %if.then.119
	movq	$0, -232(%rbp)
	movq	-56(%rbp), %rdi
	callq	file_utils_filename_from_uri
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB4_76
# BB#75:                                # %if.then.126
	movq	-56(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -224(%rbp)
.LBB4_76:                               # %if.end.128
	movq	-32(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-224(%rbp), %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	gimp_int32_get_type
	movl	$64, %r8d
	movl	%r8d, %r9d
	movl	$4, %r8d
	movl	%r8d, %ecx
	movl	-60(%rbp), %r8d
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	-384(%rbp), %rsi        # 8-byte Reload
	movq	-392(%rbp), %rdx        # 8-byte Reload
	movq	-376(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	-400(%rbp), %r11        # 8-byte Reload
	movl	%r8d, -420(%rbp)        # 4-byte Spill
	movq	%r11, %r8
	movq	-408(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	%rax, 8(%rsp)
	movl	-420(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 16(%rsp)
	movq	$4, 24(%rsp)
	movb	$0, %al
	callq	gimp_pdb_execute_procedure_by_name
	movq	%rax, -216(%rbp)
	movq	-224(%rbp), %rdi
	callq	g_free
	movq	-216(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_value_get_enum
	movl	%eax, -204(%rbp)
	cmpl	$3, -204(%rbp)
	jne	.LBB4_132
# BB#77:                                # %land.lhs.true.135
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, -240(%rbp)
	callq	gimp_image_id_get_type
	movq	%rax, -248(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.LBB4_79
# BB#78:                                # %if.then.145
	movl	$0, -252(%rbp)
	jmp	.LBB4_83
.LBB4_79:                               # %if.else.146
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-248(%rbp), %rax
	jne	.LBB4_81
# BB#80:                                # %if.then.149
	movl	$1, -252(%rbp)
	jmp	.LBB4_82
.LBB4_81:                               # %if.else.150
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -252(%rbp)
.LBB4_82:                               # %if.end.152
	jmp	.LBB4_83
.LBB4_83:                               # %if.end.153
	movl	-252(%rbp), %eax
	movl	%eax, -256(%rbp)
	cmpl	$0, -256(%rbp)
	je	.LBB4_132
# BB#84:                                # %if.then.156
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_image
	movq	%rax, -232(%rbp)
	movq	-216(%rbp), %rax
	cmpl	$3, (%rax)
	jb	.LBB4_129
# BB#85:                                # %land.lhs.true.161
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, -264(%rbp)
	movq	$24, -272(%rbp)
	cmpq	$0, -264(%rbp)
	jne	.LBB4_87
# BB#86:                                # %if.then.171
	movl	$0, -276(%rbp)
	jmp	.LBB4_91
.LBB4_87:                               # %if.else.172
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-272(%rbp), %rax
	jne	.LBB4_89
# BB#88:                                # %if.then.175
	movl	$1, -276(%rbp)
	jmp	.LBB4_90
.LBB4_89:                               # %if.else.176
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -276(%rbp)
.LBB4_90:                               # %if.end.178
	jmp	.LBB4_91
.LBB4_91:                               # %if.end.179
	movl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	cmpl	$0, -280(%rbp)
	je	.LBB4_129
# BB#92:                                # %land.lhs.true.182
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, -288(%rbp)
	movq	$24, -296(%rbp)
	cmpq	$0, -288(%rbp)
	jne	.LBB4_94
# BB#93:                                # %if.then.192
	movl	$0, -300(%rbp)
	jmp	.LBB4_98
.LBB4_94:                               # %if.else.193
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB4_96
# BB#95:                                # %if.then.196
	movl	$1, -300(%rbp)
	jmp	.LBB4_97
.LBB4_96:                               # %if.else.197
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -300(%rbp)
.LBB4_97:                               # %if.end.199
	jmp	.LBB4_98
.LBB4_98:                               # %if.end.200
	movl	-300(%rbp), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	je	.LBB4_129
# BB#99:                                # %if.then.203
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	jle	.LBB4_101
# BB#100:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jmp	.LBB4_102
.LBB4_101:                              # %cond.false
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -424(%rbp)        # 4-byte Spill
.LBB4_102:                              # %cond.end
	movl	-424(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-216(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	xorl	%edx, %edx
	cmpl	%eax, %edx
	jle	.LBB4_104
# BB#103:                               # %cond.true.215
	xorl	%eax, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jmp	.LBB4_105
.LBB4_104:                              # %cond.false.216
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB4_105:                              # %cond.end.220
	movl	-428(%rbp), %eax        # 4-byte Reload
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-216(%rbp), %rcx
	cmpl	$5, (%rcx)
	jb	.LBB4_116
# BB#106:                               # %land.lhs.true.224
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, -312(%rbp)
	movq	$24, -320(%rbp)
	cmpq	$0, -312(%rbp)
	jne	.LBB4_108
# BB#107:                               # %if.then.234
	movl	$0, -324(%rbp)
	jmp	.LBB4_112
.LBB4_108:                              # %if.else.235
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-320(%rbp), %rax
	jne	.LBB4_110
# BB#109:                               # %if.then.238
	movl	$1, -324(%rbp)
	jmp	.LBB4_111
.LBB4_110:                              # %if.else.239
	movq	-312(%rbp), %rdi
	movq	-320(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -324(%rbp)
.LBB4_111:                              # %if.end.241
	jmp	.LBB4_112
.LBB4_112:                              # %if.end.242
	movl	-324(%rbp), %eax
	movl	%eax, -328(%rbp)
	cmpl	$0, -328(%rbp)
	je	.LBB4_116
# BB#113:                               # %if.then.245
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -332(%rbp)
	callq	gimp_image_type_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-332(%rbp), %esi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	-440(%rbp), %r8         # 8-byte Reload
	movq	-440(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	cmpl	$0, %eax
	je	.LBB4_115
# BB#114:                               # %if.then.253
	movl	-332(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB4_115:                              # %if.end.254
	jmp	.LBB4_116
.LBB4_116:                              # %if.end.255
	movq	-216(%rbp), %rax
	cmpl	$6, (%rax)
	jb	.LBB4_128
# BB#117:                               # %land.lhs.true.258
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, -344(%rbp)
	movq	$24, -352(%rbp)
	cmpq	$0, -344(%rbp)
	jne	.LBB4_119
# BB#118:                               # %if.then.268
	movl	$0, -356(%rbp)
	jmp	.LBB4_123
.LBB4_119:                              # %if.else.269
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-352(%rbp), %rax
	jne	.LBB4_121
# BB#120:                               # %if.then.272
	movl	$1, -356(%rbp)
	jmp	.LBB4_122
.LBB4_121:                              # %if.else.273
	movq	-344(%rbp), %rdi
	movq	-352(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -356(%rbp)
.LBB4_122:                              # %if.end.275
	jmp	.LBB4_123
.LBB4_123:                              # %if.end.276
	movl	-356(%rbp), %eax
	movl	%eax, -360(%rbp)
	cmpl	$0, -360(%rbp)
	je	.LBB4_128
# BB#124:                               # %if.then.279
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	jle	.LBB4_126
# BB#125:                               # %cond.true.284
	xorl	%eax, %eax
	movl	%eax, -444(%rbp)        # 4-byte Spill
	jmp	.LBB4_127
.LBB4_126:                              # %cond.false.285
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -444(%rbp)        # 4-byte Spill
.LBB4_127:                              # %cond.end.289
	movl	-444(%rbp), %eax        # 4-byte Reload
	movq	-104(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB4_128:                              # %if.end.291
	jmp	.LBB4_129
.LBB4_129:                              # %if.end.292
	cmpq	$0, -232(%rbp)
	je	.LBB4_131
# BB#130:                               # %if.then.294
	xorl	%esi, %esi
	movq	-232(%rbp), %rdi
	callq	file_open_sanitize_image
	movq	-120(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, (%rax)
.LBB4_131:                              # %if.end.296
	jmp	.LBB4_132
.LBB4_132:                              # %if.end.297
	movq	-216(%rbp), %rdi
	callq	g_value_array_free
	movq	-232(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	jmp	.LBB4_134
.LBB4_133:                              # %if.end.298
	movq	$0, -24(%rbp)
.LBB4_134:                              # %return
	movq	-24(%rbp), %rax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	file_open_thumbnail, .Lfunc_end4-file_open_thumbnail
	.cfi_endproc

	.globl	file_open_with_display
	.align	16, 0x90
	.type	file_open_with_display,@function
file_open_with_display:                 # @file_open_with_display
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp23:
	.cfi_offset %rbx, -24
	movq	16(%rbp), %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %r8
	movl	-44(%rbp), %r9d
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rbx
	movq	$0, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%r11, -72(%rbp)         # 8-byte Spill
	callq	file_open_with_proc_and_display
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	file_open_with_display, .Lfunc_end5-file_open_with_display
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	file_open_with_proc_and_display
	.align	16, 0x90
	.type	file_open_with_proc_and_display,@function
file_open_with_proc_and_display:        # @file_open_with_proc_and_display
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
	pushq	%r14
	pushq	%rbx
	subq	$304, %rsp              # imm = 0x130
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movq	%r11, -80(%rbp)
	movq	%r10, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	$0, -112(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_with_proc_and_display, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB6_59
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.20
	movl	$0, -156(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.21
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.24
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.28
	movl	$1, -156(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.29
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB6_19:                               # %if.end.31
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.32
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_with_proc_and_display, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB6_59
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	jmp	.LBB6_25
.LBB6_25:                               # %do.body.39
	cmpq	$0, -48(%rbp)
	je	.LBB6_34
# BB#26:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB6_28
# BB#27:                                # %if.then.49
	movl	$0, -180(%rbp)
	jmp	.LBB6_33
.LBB6_28:                               # %if.else.50
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_31
# BB#29:                                # %land.lhs.true.53
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB6_31
# BB#30:                                # %if.then.57
	movl	$1, -180(%rbp)
	jmp	.LBB6_32
.LBB6_31:                               # %if.else.58
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB6_32:                               # %if.end.60
	jmp	.LBB6_33
.LBB6_33:                               # %if.end.61
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB6_35
.LBB6_34:                               # %if.then.64
	jmp	.LBB6_36
.LBB6_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_with_proc_and_display, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB6_59
.LBB6_36:                               # %if.end.66
	jmp	.LBB6_37
.LBB6_37:                               # %do.end.67
	jmp	.LBB6_38
.LBB6_38:                               # %do.body.68
	cmpq	$0, -88(%rbp)
	je	.LBB6_40
# BB#39:                                # %if.then.70
	jmp	.LBB6_41
.LBB6_40:                               # %if.else.71
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_with_proc_and_display, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB6_59
.LBB6_41:                               # %if.end.72
	jmp	.LBB6_42
.LBB6_42:                               # %do.end.73
	xorl	%eax, %eax
	leaq	-112(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movl	-68(%rbp), %r10d
	movq	-80(%rbp), %r11
	movq	-88(%rbp), %rbx
	movq	-96(%rbp), %r14
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	%r9, %r8
	movl	%r10d, %r9d
	movq	%r11, (%rsp)
	movl	$0, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	-232(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	file_open_image
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB6_58
# BB#43:                                # %if.then.76
	cmpq	$0, -80(%rbp)
	jne	.LBB6_45
# BB#44:                                # %if.then.78
	movq	-104(%rbp), %rdi
	callq	gimp_image_get_load_proc
	movq	%rax, -80(%rbp)
.LBB6_45:                               # %if.end.80
	movq	-80(%rbp), %rdi
	callq	file_open_file_proc_is_import
	cmpl	$0, %eax
	je	.LBB6_48
# BB#46:                                # %land.lhs.true.83
	movq	-104(%rbp), %rdi
	callq	gimp_image_get_n_layers
	cmpl	$1, %eax
	jne	.LBB6_48
# BB#47:                                # %if.then.86
	movq	-104(%rbp), %rdi
	callq	gimp_image_get_layer_iter
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-56(%rbp), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-200(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_rename
	movq	-104(%rbp), %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_free
	movq	-104(%rbp), %rdi
	callq	gimp_image_clean_all
	movq	-200(%rbp), %rdi
	callq	g_free
.LBB6_48:                               # %if.end.94
	xorl	%edx, %edx
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_create_display
	cmpq	$0, %rax
	je	.LBB6_50
# BB#49:                                # %if.then.98
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB6_50:                               # %if.end.99
	cmpl	$0, -68(%rbp)
	jne	.LBB6_57
# BB#51:                                # %if.then.101
	movq	-32(%rbp), %rax
	movq	544(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_document_list_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	gimp_document_list_add_uri
	movq	%rax, -216(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_image_get_any_uri
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	je	.LBB6_56
# BB#52:                                # %land.lhs.true.111
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_56
# BB#53:                                # %if.then.114
	movq	-216(%rbp), %rdi
	callq	gimp_imagefile_check_thumbnail
	cmpl	$0, %eax
	jne	.LBB6_55
# BB#54:                                # %if.then.117
	movq	-216(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rdx
	callq	gimp_imagefile_save_thumbnail
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB6_55:                               # %if.end.119
	jmp	.LBB6_56
.LBB6_56:                               # %if.end.120
	jmp	.LBB6_57
.LBB6_57:                               # %if.end.121
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_image_opened
.LBB6_58:                               # %if.end.123
	movq	-104(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB6_59:                               # %return
	movq	-24(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	file_open_with_proc_and_display, .Lfunc_end6-file_open_with_proc_and_display
	.cfi_endproc

	.globl	file_open_layers
	.align	16, 0x90
	.type	file_open_layers,@function
file_open_layers:                       # @file_open_layers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$320, %rsp              # imm = 0x140
.Ltmp32:
	.cfi_offset %rbx, -32
.Ltmp33:
	.cfi_offset %r14, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movl	16(%rbp), %ebx
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	movl	%ebx, -76(%rbp)
	movq	%r11, -88(%rbp)
	movq	%r10, -96(%rbp)
	movq	%rax, -104(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -148(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -148(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_layers, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_74
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -172(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -172(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_layers, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_74
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	jmp	.LBB7_25
.LBB7_25:                               # %do.body.39
	cmpq	$0, -48(%rbp)
	je	.LBB7_34
# BB#26:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB7_28
# BB#27:                                # %if.then.49
	movl	$0, -196(%rbp)
	jmp	.LBB7_33
.LBB7_28:                               # %if.else.50
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_31
# BB#29:                                # %land.lhs.true.53
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB7_31
# BB#30:                                # %if.then.57
	movl	$1, -196(%rbp)
	jmp	.LBB7_32
.LBB7_31:                               # %if.else.58
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB7_32:                               # %if.end.60
	jmp	.LBB7_33
.LBB7_33:                               # %if.end.61
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB7_35
.LBB7_34:                               # %if.then.64
	jmp	.LBB7_36
.LBB7_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_layers, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_74
.LBB7_36:                               # %if.end.66
	jmp	.LBB7_37
.LBB7_37:                               # %do.end.67
	jmp	.LBB7_38
.LBB7_38:                               # %do.body.68
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -216(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB7_40
# BB#39:                                # %if.then.77
	movl	$0, -220(%rbp)
	jmp	.LBB7_45
.LBB7_40:                               # %if.else.78
	movq	-208(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_43
# BB#41:                                # %land.lhs.true.81
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-216(%rbp), %rax
	jne	.LBB7_43
# BB#42:                                # %if.then.85
	movl	$1, -220(%rbp)
	jmp	.LBB7_44
.LBB7_43:                               # %if.else.86
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -220(%rbp)
.LBB7_44:                               # %if.end.88
	jmp	.LBB7_45
.LBB7_45:                               # %if.end.89
	movl	-220(%rbp), %eax
	movl	%eax, -224(%rbp)
	cmpl	$0, -224(%rbp)
	je	.LBB7_47
# BB#46:                                # %if.then.92
	jmp	.LBB7_48
.LBB7_47:                               # %if.else.93
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_layers, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_74
.LBB7_48:                               # %if.end.94
	jmp	.LBB7_49
.LBB7_49:                               # %do.end.95
	jmp	.LBB7_50
.LBB7_50:                               # %do.body.96
	cmpq	$0, -72(%rbp)
	je	.LBB7_52
# BB#51:                                # %if.then.98
	jmp	.LBB7_53
.LBB7_52:                               # %if.else.99
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_layers, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_74
.LBB7_53:                               # %if.end.100
	jmp	.LBB7_54
.LBB7_54:                               # %do.end.101
	jmp	.LBB7_55
.LBB7_55:                               # %do.body.102
	cmpq	$0, -96(%rbp)
	je	.LBB7_57
# BB#56:                                # %if.then.104
	jmp	.LBB7_58
.LBB7_57:                               # %if.else.105
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_layers, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_74
.LBB7_58:                               # %if.end.106
	jmp	.LBB7_59
.LBB7_59:                               # %do.end.107
	jmp	.LBB7_60
.LBB7_60:                               # %do.body.108
	cmpq	$0, -104(%rbp)
	je	.LBB7_62
# BB#61:                                # %lor.lhs.false.110
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_63
.LBB7_62:                               # %if.then.112
	jmp	.LBB7_64
.LBB7_63:                               # %if.else.113
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_layers, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB7_74
.LBB7_64:                               # %if.end.114
	jmp	.LBB7_65
.LBB7_65:                               # %do.end.115
	xorl	%r9d, %r9d
	leaq	-128(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %r8
	movq	-88(%rbp), %r10
	movl	-76(%rbp), %r11d
	movq	-96(%rbp), %rbx
	movq	-104(%rbp), %r14
	movq	%r10, (%rsp)
	movl	%r11d, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%r14, 32(%rsp)
	callq	file_open_image
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB7_73
# BB#66:                                # %if.then.118
	movl	$0, -228(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_image_undo_disable
	leaq	-228(%rbp), %rdx
	movq	-112(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	file_open_get_layers
	movq	%rax, -120(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB7_69
# BB#67:                                # %land.lhs.true.123
	cmpl	$1, -228(%rbp)
	jle	.LBB7_69
# BB#68:                                # %if.then.125
	movq	-120(%rbp), %rdi
	callq	g_list_free
	movl	$1, %edx
	xorl	%eax, %eax
	movq	-112(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_image_merge_visible_layers
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -120(%rbp)
.LBB7_69:                               # %if.end.129
	cmpq	$0, -120(%rbp)
	je	.LBB7_71
# BB#70:                                # %if.then.131
	movq	-72(%rbp), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -248(%rbp)
	movq	-56(%rbp), %rdi
	movq	-248(%rbp), %rsi
	movq	-120(%rbp), %rdx
	callq	file_open_convert_items
	movq	-248(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	544(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_document_list_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	-128(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_document_list_add_uri
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB7_72
.LBB7_71:                               # %if.else.137
	movq	-104(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.16, %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	-284(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	-96(%rbp), %rax
	movl	$0, (%rax)
.LBB7_72:                               # %if.end.140
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB7_73:                               # %if.end.141
	movq	-120(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -24(%rbp)
.LBB7_74:                               # %return
	movq	-24(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	file_open_layers, .Lfunc_end7-file_open_layers
	.cfi_endproc

	.align	16, 0x90
	.type	file_open_get_layers,@function
file_open_get_layers:                   # @file_open_get_layers
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_layer_iter
	movq	%rax, -32(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB8_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -40(%rbp)
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB8_10
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB8_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB8_7:                                # %if.end.8
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB8_9
# BB#8:                                 # %if.then.10
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -40(%rbp)
.LBB8_9:                                # %if.end.12
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_10
.LBB8_10:                               # %if.end.13
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_11
.LBB8_11:                               # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB8_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB8_14
.LBB8_13:                               # %cond.false
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB8_14
.LBB8_14:                               # %cond.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB8_1
.LBB8_15:                               # %for.end
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	file_open_get_layers, .Lfunc_end8-file_open_get_layers
	.cfi_endproc

	.align	16, 0x90
	.type	file_open_convert_items,@function
file_open_convert_items:                # @file_open_convert_items
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	callq	gimp_item_convert
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_list_length
	cmpl	$1, %eax
	jne	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
.LBB9_5:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB9_9
.LBB9_8:                                # %cond.false
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB9_9
.LBB9_9:                                # %cond.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB9_1
.LBB9_10:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	file_open_convert_items, .Lfunc_end9-file_open_convert_items
	.cfi_endproc

	.globl	file_open_from_command_line
	.align	16, 0x90
	.type	file_open_from_command_line,@function
file_open_from_command_line:            # @file_open_from_command_line
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -52(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_from_command_line, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_33
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_from_command_line, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_33
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	file_utils_any_to_uri
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB10_31
# BB#18:                                # %if.then.19
	movq	-16(%rbp), %rdi
	callq	gimp_get_empty_display
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB10_20
# BB#19:                                # %if.then.25
	movq	-16(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, %rdi
	callq	gimp_context_get_display
	movq	%rax, -96(%rbp)
.LBB10_20:                              # %if.end.28
	cmpq	$0, -96(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.30
	movl	$80, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
.LBB10_22:                              # %if.end.32
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movq	-96(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-100(%rbp), %r9
	leaq	-40(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	file_open_with_display
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB10_24
# BB#23:                                # %if.then.38
	movl	$80, %eax
	movl	%eax, %esi
	movl	$1, -52(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movabsq	$g_free, %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data_full
	jmp	.LBB10_28
.LBB10_24:                              # %if.else.40
	cmpl	$4, -100(%rbp)
	je	.LBB10_27
# BB#25:                                # %land.lhs.true.42
	cmpq	$0, -96(%rbp)
	je	.LBB10_27
# BB#26:                                # %if.then.44
	movq	-48(%rbp), %rdi
	callq	file_utils_uri_display_name
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-112(%rbp), %r8
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB10_27:                              # %if.end.50
	jmp	.LBB10_28
.LBB10_28:                              # %if.end.51
	cmpq	$0, -96(%rbp)
	je	.LBB10_30
# BB#29:                                # %if.then.53
	movl	$80, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_remove_weak_pointer
.LBB10_30:                              # %if.end.55
	jmp	.LBB10_32
.LBB10_31:                              # %if.else.56
	movabsq	$.L.str.20, %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
.LBB10_32:                              # %if.end.58
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB10_33:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	file_open_from_command_line, .Lfunc_end10-file_open_from_command_line
	.cfi_endproc

	.align	16, 0x90
	.type	file_open_profile_apply_rgb,@function
file_open_profile_apply_rgb:            # @file_open_profile_apply_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	368(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$1, %eax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_10
.LBB11_2:                               # %if.end
	movq	-40(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB11_4
# BB#3:                                 # %if.then.3
	jmp	.LBB11_10
.LBB11_4:                               # %if.end.4
	leaq	-48(%rbp), %r8
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	plug_in_icc_profile_apply_rgb
	cmpl	$0, %eax
	jne	.LBB11_10
# BB#5:                                 # %if.then.6
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	gimp_plug_in_error_quark
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB11_8
# BB#6:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$2, 4(%rax)
	jne	.LBB11_8
# BB#7:                                 # %if.then.10
	movabsq	$.L.str.23, %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.22, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.24, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB11_9
.LBB11_8:                               # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
.LBB11_9:                               # %if.end.18
	movq	-48(%rbp), %rdi
	callq	g_error_free
.LBB11_10:                              # %if.end.19
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	file_open_profile_apply_rgb, .Lfunc_end11-file_open_profile_apply_rgb
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-File"
	.size	.L.str, 10

	.type	.L__func__.file_open_image,@object # @__func__.file_open_image
.L__func__.file_open_image:
	.asciz	"file_open_image"
	.size	.L__func__.file_open_image, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

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
	.asciz	"status != NULL"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.5, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Not a regular file"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s plug-in returned SUCCESS but did not return an image"
	.size	.L.str.7, 56

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s plug-In could not open image"
	.size	.L.str.8, 32

	.type	.L__func__.file_open_thumbnail,@object # @__func__.file_open_thumbnail
.L__func__.file_open_thumbnail:
	.asciz	"file_open_thumbnail"
	.size	.L__func__.file_open_thumbnail, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"mime_type != NULL"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"image_width != NULL"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"image_height != NULL"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"type != NULL"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"num_layers != NULL"
	.size	.L.str.13, 19

	.type	.L__func__.file_open_with_proc_and_display,@object # @__func__.file_open_with_proc_and_display
.L__func__.file_open_with_proc_and_display:
	.asciz	"file_open_with_proc_and_display"
	.size	.L__func__.file_open_with_proc_and_display, 32

	.type	.L__func__.file_open_layers,@object # @__func__.file_open_layers
.L__func__.file_open_layers:
	.asciz	"file_open_layers"
	.size	.L__func__.file_open_layers, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP_IS_IMAGE (dest_image)"
	.size	.L.str.14, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"uri != NULL"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Image doesn't contain any layers"
	.size	.L.str.16, 33

	.type	.L__func__.file_open_from_command_line,@object # @__func__.file_open_from_command_line
.L__func__.file_open_from_command_line:
	.asciz	"file_open_from_command_line"
	.size	.L__func__.file_open_from_command_line, 28

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"filename != NULL"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-file-open-last-uri"
	.size	.L.str.18, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Opening '%s' failed: %s"
	.size	.L.str.19, 24

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"conversion filename -> uri failed: %s\n"
	.size	.L.str.20, 39

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"icc-profile"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s\n\n%s"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Color management has been disabled. It can be enabled again in the Preferences dialog."
	.size	.L.str.23, 87

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"mode"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"image/xcf"
	.size	.L.str.25, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
