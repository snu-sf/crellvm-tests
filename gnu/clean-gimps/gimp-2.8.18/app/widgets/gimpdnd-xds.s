	.text
	.file	"gimpdnd-xds.bc"
	.globl	gimp_dnd_xds_source_set
	.align	16, 0x90
	.type	gimp_dnd_xds_source_set,@function
gimp_dnd_xds_source_set:                # @gimp_dnd_xds_source_set
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gdk_drag_context_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_xds_source_set, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_38
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB0_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_23
.LBB0_22:                               # %if.then.36
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_xds_source_set, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_38
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.39
	jmp	.LBB0_26
.LBB0_26:                               # %do.body.40
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB0_28
# BB#27:                                # %if.then.42
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_xds_source_set, %rsi
	movl	$78, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	gimp_log
.LBB0_28:                               # %if.end.43
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.44
	movabsq	$.L.str.3, %rdi
	callq	gdk_atom_intern_static_string
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_37
# BB#30:                                # %if.then.47
	movabsq	$.L.str.4, %rdi
	callq	gdk_atom_intern_static_string
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_filename
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB0_32
# BB#31:                                # %if.then.54
	movq	-88(%rbp), %rdi
	callq	g_path_get_basename
	movq	%rax, -96(%rbp)
	jmp	.LBB0_33
.LBB0_32:                               # %if.else.56
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movabsq	$.L.str.6, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strconcat
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	g_filename_from_utf8
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_free
.LBB0_33:                               # %if.end.62
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %r9
	cmpq	$0, -96(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%r9, -144(%rbp)         # 8-byte Spill
	je	.LBB0_35
# BB#34:                                # %cond.true
	movq	-96(%rbp), %rdi
	callq	strlen
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB0_36
.LBB0_35:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB0_36
.LBB0_36:                               # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	xorl	%r8d, %r8d
	movl	%eax, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-144(%rbp), %r9         # 8-byte Reload
	movl	-156(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	gdk_property_change
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
	jmp	.LBB0_38
.LBB0_37:                               # %if.else.65
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gdk_property_delete
.LBB0_38:                               # %if.end.67
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dnd_xds_source_set, .Lfunc_end0-gimp_dnd_xds_source_set
	.cfi_endproc

	.globl	gimp_dnd_xds_save_image
	.align	16, 0x90
	.type	gimp_dnd_xds_save_image,@function
gimp_dnd_xds_save_image:                # @gimp_dnd_xds_save_image
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
	pushq	%rbx
	subq	$248, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -84(%rbp)
	movq	$0, -96(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gdk_drag_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_xds_save_image, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_45
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_xds_save_image, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_45
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	jmp	.LBB1_25
.LBB1_25:                               # %do.body.39
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB1_27
# BB#26:                                # %if.then.41
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_xds_save_image, %rsi
	movl	$131, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	gimp_log
.LBB1_27:                               # %if.end.42
	jmp	.LBB1_28
.LBB1_28:                               # %do.end.43
	movabsq	$.L.str.3, %rdi
	callq	gdk_atom_intern_static_string
	movabsq	$.L.str.4, %rdi
	movq	%rax, -48(%rbp)
	callq	gdk_atom_intern_static_string
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$4096, %edx             # imm = 0x1000
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	leaq	-60(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %r10
	movq	-56(%rbp), %rdx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r10, 24(%rsp)
	callq	gdk_property_get
	cmpl	$0, %eax
	jne	.LBB1_30
# BB#29:                                # %if.then.48
	jmp	.LBB1_45
.LBB1_30:                               # %if.end.49
	movq	-72(%rbp), %rdi
	movslq	-60(%rbp), %rsi
	callq	g_strndup
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_free
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rdi
	movq	-80(%rbp), %rsi
	callq	file_procedure_find
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_32
# BB#31:                                # %if.then.53
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rdi
	movq	-80(%rbp), %rsi
	callq	file_procedure_find
	movq	%rax, -40(%rbp)
	movl	$1, -84(%rbp)
.LBB1_32:                               # %if.end.57
	cmpq	$0, -40(%rbp)
	je	.LBB1_43
# BB#33:                                # %if.then.59
	movq	-80(%rbp), %rdi
	callq	file_utils_filename_from_uri
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB1_36
# BB#34:                                # %lor.lhs.false
	movl	$16, %esi
	movq	-152(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB1_36
# BB#35:                                # %lor.lhs.false.65
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-80(%rbp), %rsi
	callq	gimp_file_overwrite_dialog
	cmpl	$0, %eax
	je	.LBB1_42
.LBB1_36:                               # %if.then.68
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%r9d, %r9d
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-24(%rbp), %rsi
	movq	-80(%rbp), %r8
	movq	-40(%rbp), %r10
	cmpl	$0, -84(%rbp)
	setne	%r11b
	xorb	$-1, %r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	movl	-84(%rbp), %ebx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	%r10, %r8
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r10, 24(%rsp)
	callq	file_save
	cmpl	$3, %eax
	jne	.LBB1_38
# BB#37:                                # %if.then.74
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_selection_data_get_target
	movl	$8, %edx
	movabsq	$.L.str.8, %rcx
	movl	$1, %r8d
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_selection_data_set
	jmp	.LBB1_41
.LBB1_38:                               # %if.else.76
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_selection_data_get_target
	movl	$8, %edx
	movabsq	$.L.str.9, %rcx
	movl	$1, %r8d
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_selection_data_set
	cmpq	$0, -96(%rbp)
	je	.LBB1_40
# BB#39:                                # %if.then.79
	movq	-80(%rbp), %rdi
	callq	file_utils_uri_display_name
	movabsq	$.L.str.10, %rdi
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movq	-160(%rbp), %r8
	movq	-96(%rbp), %rdi
	movq	8(%rdi), %r9
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	movq	-160(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_error_free
.LBB1_40:                               # %if.end.85
	jmp	.LBB1_41
.LBB1_41:                               # %if.end.86
	jmp	.LBB1_42
.LBB1_42:                               # %if.end.87
	movq	-152(%rbp), %rdi
	callq	g_free
	jmp	.LBB1_44
.LBB1_43:                               # %if.else.88
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_selection_data_get_target
	movl	$8, %edx
	movabsq	$.L.str.9, %rcx
	movl	$1, %r8d
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_selection_data_set
	movabsq	$.L.str.11, %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$2, %edx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
.LBB1_44:                               # %if.end.92
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB1_45:                               # %return
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dnd_xds_save_image, .Lfunc_end1-gimp_dnd_xds_save_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_overwrite_dialog,@function
gimp_file_overwrite_dialog:             # @gimp_file_overwrite_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$240, %rsp
.Ltmp10:
	.cfi_offset %rbx, -32
.Ltmp11:
	.cfi_offset %r14, -24
	movabsq	$.L.str.12, %rax
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -52(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str.15, %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.13, %rsi
	movl	$2, %ecx
	movabsq	$gimp_standard_help_func, %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movabsq	$.L.str.14, %rdx
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -132(%rbp)       # 4-byte Spill
	movl	%r10d, -136(%rbp)       # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	callq	file_utils_uri_display_name
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rdi
	movq	264(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rdi
	movq	264(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-24(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	callq	gtk_dialog_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB2_7
.LBB2_2:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_5
# BB#3:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB2_5
# BB#4:                                 # %if.then.16
	movl	$1, -76(%rbp)
	jmp	.LBB2_6
.LBB2_5:                                # %if.else.17
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB2_6:                                # %if.end
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.19
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB2_9
# BB#8:                                 # %if.then.21
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
.LBB2_9:                                # %if.end.24
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-40(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	callq	gtk_dialog_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB2_11
# BB#10:                                # %if.then.38
	movl	$0, -100(%rbp)
	jmp	.LBB2_16
.LBB2_11:                               # %if.else.39
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_14
# BB#12:                                # %land.lhs.true.42
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB2_14
# BB#13:                                # %if.then.47
	movl	$1, -100(%rbp)
	jmp	.LBB2_15
.LBB2_14:                               # %if.else.48
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB2_15:                               # %if.end.50
	jmp	.LBB2_16
.LBB2_16:                               # %if.end.51
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB2_18
# BB#17:                                # %if.then.54
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
.LBB2_18:                               # %if.end.57
	movl	-52(%rbp), %eax
	addq	$240, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_file_overwrite_dialog, .Lfunc_end2-gimp_file_overwrite_dialog
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_dnd_xds_source_set,@object # @__func__.gimp_dnd_xds_source_set
.L__func__.gimp_dnd_xds_source_set:
	.asciz	"gimp_dnd_xds_source_set"
	.size	.L__func__.gimp_dnd_xds_source_set, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GDK_IS_DRAG_CONTEXT (context)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image == NULL || GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 39

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"XdndDirectSave0"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"text/plain"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Untitled"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	".xcf"
	.size	.L.str.6, 5

	.type	.L__func__.gimp_dnd_xds_save_image,@object # @__func__.gimp_dnd_xds_save_image
.L__func__.gimp_dnd_xds_save_image:
	.asciz	"gimp_dnd_xds_save_image"
	.size	.L__func__.gimp_dnd_xds_save_image, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"S"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"E"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Saving '%s' failed:\n\n%s"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The given filename does not have any known file extension."
	.size	.L.str.11, 59

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"File Exists"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-warning"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gtk-cancel"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Replace"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"A file named '%s' already exists."
	.size	.L.str.16, 34

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Do you want to replace it with the image you are saving?"
	.size	.L.str.17, 57


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
