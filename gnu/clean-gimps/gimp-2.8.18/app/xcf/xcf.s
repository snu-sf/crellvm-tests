	.text
	.file	"xcf.bc"
	.globl	xcf_init
	.align	16, 0x90
	.type	xcf_init,@function
xcf_init:                               # @xcf_init
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
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.xcf_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movl	$1, %edi
	movabsq	$.L.str.2, %rsi
	callq	gimp_plug_in_procedure_new
	movabsq	$xcf_save_invoker, %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 128(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rdi
	movq	%rax, -24(%rbp)
	callq	g_strdup
	xorl	%esi, %esi
	movabsq	$.L.str.4, %rdx
	movl	$12, %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, 152(%rdi)
	movq	-24(%rbp), %rdi
	callq	gimp_plug_in_procedure_set_icon
	movabsq	$.L.str.5, %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_plug_in_procedure_set_image_types
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	callq	gimp_plug_in_procedure_set_file_proc
	movabsq	$.L.str.8, %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_plug_in_procedure_set_mime_type
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rcx
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.12, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-32(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %r8
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r11d, -100(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_image_id
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	movl	$1, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_drawable_id
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	movl	%r11d, %eax
	movl	$227, %r11d
	movq	-32(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-132(%rbp), %r9d        # 4-byte Reload
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%r11d, -148(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movl	-152(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -156(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_plug_in_manager_add_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$1, %edi
	movabsq	$.L.str.28, %rsi
	callq	gimp_plug_in_procedure_new
	movabsq	$xcf_load_invoker, %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-32(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rdi
	movq	%rax, -24(%rbp)
	callq	g_strdup
	xorl	%esi, %esi
	movabsq	$.L.str.4, %rdx
	movl	$12, %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, 152(%rdi)
	movq	-24(%rbp), %rdi
	callq	gimp_plug_in_procedure_set_icon
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_plug_in_procedure_set_image_types
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.29, %rcx
	movq	-24(%rbp), %rdi
	callq	gimp_plug_in_procedure_set_file_proc
	movabsq	$.L.str.8, %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_plug_in_procedure_set_mime_type
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.30, %rdx
	movabsq	$.L.str.31, %rcx
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.12, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %rbx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -208(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movl	%r11d, -220(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.32, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movl	$227, %r9d
	movq	-32(%rbp), %r10
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	movl	-224(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -228(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -240(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -256(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -264(%rbp)        # 8-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_image_id
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_plug_in_manager_add_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_13:                               # %return
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xcf_init, .Lfunc_end0-xcf_init
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_save_invoker,@function
xcf_save_invoker:                       # @xcf_save_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -180(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_set_busy
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$24, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gimp_value_get_image
	movq	%rax, -168(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movabsq	$.L.str.40, %rsi
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	fopen
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB1_11
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	$0, -128(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movq	$0, -64(%rbp)
	movl	$1, -56(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.10
	movq	-176(%rbp), %rdi
	callq	g_filename_display_name
	movabsq	$.L.str.41, %rdi
	movq	%rax, -192(%rbp)
	callq	gettext
	movq	-192(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	xorl	%edx, %edx
	movq	%rax, -200(%rbp)
	movq	-32(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	gimp_progress_start
	movq	-200(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_free
	movq	-192(%rbp), %rdi
	callq	g_free
.LBB1_3:                                # %if.end
	leaq	-152(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	xcf_save_choose_format
	leaq	-152(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	xcf_save_image
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	je	.LBB1_7
# BB#4:                                 # %if.then.17
	movq	-136(%rbp), %rdi
	callq	fclose
	cmpl	$-1, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.20
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -204(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	-204(%rbp), %edi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	g_file_error_from_errno
	movabsq	$.L.str.42, %rdi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	gettext
	movl	-204(%rbp), %edi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_strerror
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	-228(%rbp), %esi        # 4-byte Reload
	movl	-232(%rbp), %edx        # 4-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -180(%rbp)
.LBB1_6:                                # %if.end.26
	jmp	.LBB1_8
.LBB1_7:                                # %if.else
	movq	-136(%rbp), %rdi
	callq	fclose
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB1_8:                                # %if.end.29
	cmpq	$0, -32(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.31
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB1_10:                               # %if.end.32
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.33
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -208(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	-208(%rbp), %edi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	g_file_error_from_errno
	movabsq	$.L.str.43, %rdi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-176(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	-208(%rbp), %edi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_strerror
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	-260(%rbp), %esi        # 4-byte Reload
	movl	-264(%rbp), %edx        # 4-byte Reload
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	-280(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
.LBB1_12:                               # %if.end.41
	movq	-8(%rbp), %rdi
	movl	-180(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movl	%esi, -292(%rbp)        # 4-byte Spill
	je	.LBB1_14
# BB#13:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB1_15
.LBB1_14:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB1_15
.LBB1_15:                               # %cond.end
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -160(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_unset_busy
	movq	-160(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end1:
	.size	xcf_save_invoker, .Lfunc_end1-xcf_save_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_load_invoker,@function
xcf_load_invoker:                       # @xcf_load_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	$0, -168(%rbp)
	movl	$0, -180(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_set_busy
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_string
	movabsq	$.L.str.34, %rsi
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	fopen
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB2_23
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	$0, -128(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -56(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then.7
	movq	-176(%rbp), %rdi
	callq	g_filename_display_name
	movabsq	$.L.str.35, %rdi
	movq	%rax, -208(%rbp)
	callq	gettext
	movq	-208(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	xorl	%edx, %edx
	movq	%rax, -216(%rbp)
	movq	-32(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	gimp_progress_start
	movq	-216(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_free
	movq	-208(%rbp), %rdi
	callq	g_free
.LBB2_3:                                # %if.end
	movl	$14, %edx
	leaq	-194(%rbp), %rsi
	movl	$1, -180(%rbp)
	movq	-136(%rbp), %rdi
	callq	xcf_read_int8
	movabsq	$.L.str.36, %rsi
	leaq	-194(%rbp), %rdi
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB2_5
# BB#4:                                 # %if.then.18
	movl	$0, -180(%rbp)
	jmp	.LBB2_12
.LBB2_5:                                # %if.else
	leaq	-194(%rbp), %rax
	addq	$9, %rax
	movl	$.L.str.37, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_7
# BB#6:                                 # %if.then.21
	movl	$0, -52(%rbp)
	jmp	.LBB2_11
.LBB2_7:                                # %if.else.22
	movsbl	-185(%rbp), %eax
	cmpl	$118, %eax
	jne	.LBB2_9
# BB#8:                                 # %if.then.26
	leaq	-194(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, -52(%rbp)
	jmp	.LBB2_10
.LBB2_9:                                # %if.else.31
	movl	$0, -180(%rbp)
.LBB2_10:                               # %if.end.32
	jmp	.LBB2_11
.LBB2_11:                               # %if.end.33
	jmp	.LBB2_12
.LBB2_12:                               # %if.end.34
	cmpl	$0, -180(%rbp)
	je	.LBB2_20
# BB#13:                                # %if.then.36
	cmpl	$0, -52(%rbp)
	jl	.LBB2_18
# BB#14:                                # %land.lhs.true
	movslq	-52(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB2_18
# BB#15:                                # %if.then.44
	leaq	-152(%rbp), %rsi
	movslq	-52(%rbp), %rax
	movq	xcf_loaders(,%rax,8), %rax
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	*%rax
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB2_17
# BB#16:                                # %if.then.49
	movl	$0, -180(%rbp)
.LBB2_17:                               # %if.end.50
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.51
	movq	-48(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.38, %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movl	-52(%rbp), %r8d
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	-244(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$0, -180(%rbp)
.LBB2_19:                               # %if.end.55
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.56
	movq	-136(%rbp), %rdi
	callq	fclose
	cmpq	$0, -32(%rbp)
	movl	%eax, -248(%rbp)        # 4-byte Spill
	je	.LBB2_22
# BB#21:                                # %if.then.60
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB2_22:                               # %if.end.61
	jmp	.LBB2_24
.LBB2_23:                               # %if.else.62
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -220(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	-220(%rbp), %edi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	g_file_error_from_errno
	movabsq	$.L.str.39, %rdi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-176(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	-220(%rbp), %edi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_strerror
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	-260(%rbp), %esi        # 4-byte Reload
	movl	-264(%rbp), %edx        # 4-byte Reload
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	-280(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
.LBB2_24:                               # %if.end.69
	movq	-8(%rbp), %rdi
	movl	-180(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movl	%esi, -292(%rbp)        # 4-byte Spill
	je	.LBB2_26
# BB#25:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB2_27
.LBB2_26:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB2_27
.LBB2_27:                               # %cond.end
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -160(%rbp)
	cmpl	$0, -180(%rbp)
	je	.LBB2_29
# BB#28:                                # %if.then.73
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_image
.LBB2_29:                               # %if.end.76
	movq	-16(%rbp), %rdi
	callq	gimp_unset_busy
	movq	-160(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end2:
	.size	xcf_load_invoker, .Lfunc_end2-xcf_load_invoker
	.cfi_endproc

	.globl	xcf_exit
	.align	16, 0x90
	.type	xcf_exit,@function
xcf_exit:                               # @xcf_exit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.xcf_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_12
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	xcf_exit, .Lfunc_end3-xcf_exit
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-XCF"
	.size	.L.str, 9

	.type	.L__func__.xcf_init,@object # @__func__.xcf_init
.L__func__.xcf_init:
	.asciz	"xcf_init"
	.size	.L__func__.xcf_init, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-xcf-save"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP XCF image"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-wilber"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"xcf"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.zero	1
	.size	.L.str.7, 1

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"image/xcf"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Saves file in the .xcf file format"
	.size	.L.str.9, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The XCF file format has been designed specifically for loading and saving tiled and layered images in GIMP. This procedure will save the specified image in the xcf file format."
	.size	.L.str.10, 177

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.11, 31

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1995-1996"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"dummy-param"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Dummy Param"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Dummy parameter"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"image"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Image"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Input image"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"drawable"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Drawable"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Active drawable of input image"
	.size	.L.str.21, 31

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"filename"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Filename"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"The name of the file to save the image in, in the on-disk character set and encoding"
	.size	.L.str.24, 85

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"raw-filename"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Raw filename"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"The basename of the file, in UTF-8"
	.size	.L.str.27, 35

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-xcf-load"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"0,string,gimp\\040xcf\\040"
	.size	.L.str.29, 25

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Loads file saved in the .xcf file format"
	.size	.L.str.30, 41

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"The XCF file format has been designed specifically for loading and saving tiled and layered images in GIMP. This procedure will load the specified file."
	.size	.L.str.31, 153

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"The name of the file to load, in the on-disk character set and encoding"
	.size	.L.str.32, 72

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Output image"
	.size	.L.str.33, 13

	.type	.L__func__.xcf_exit,@object # @__func__.xcf_exit
.L__func__.xcf_exit:
	.asciz	"xcf_exit"
	.size	.L__func__.xcf_exit, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"rb"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Opening '%s'"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp xcf "
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"file"
	.size	.L.str.37, 5

	.type	xcf_loaders,@object     # @xcf_loaders
	.section	.rodata,"a",@progbits
	.align	16
xcf_loaders:
	.quad	xcf_load_image
	.quad	xcf_load_image
	.quad	xcf_load_image
	.quad	xcf_load_image
	.size	xcf_loaders, 32

	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"XCF error: unsupported XCF file version %d encountered"
	.size	.L.str.38, 55

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.39, 36

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"wb"
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Saving '%s'"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Error saving XCF file: %s"
	.size	.L.str.42, 26

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.43, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
