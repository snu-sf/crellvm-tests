	.text
	.file	"gimphelp.bc"
	.globl	gimp_help_show
	.align	16, 0x90
	.type	gimp_help_show,@function
gimp_help_show:                         # @gimp_help_show
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_help_show, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_43
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB0_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_23
.LBB0_22:                               # %if.then.36
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_help_show, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_43
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.39
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 664(%rax)
	je	.LBB0_43
# BB#26:                                # %if.then.44
	movl	$40, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, 8(%rdi)
	cmpq	$0, -24(%rbp)
	je	.LBB0_29
# BB#27:                                # %land.lhs.true.50
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB0_29
# BB#28:                                # %if.then.53
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-96(%rbp), %rdi
	movq	%rax, 16(%rdi)
.LBB0_29:                               # %if.end.56
	movq	-8(%rbp), %rdi
	callq	gimp_help_get_locales
	movq	-96(%rbp), %rdi
	movq	%rax, 24(%rdi)
	cmpq	$0, -32(%rbp)
	je	.LBB0_32
# BB#30:                                # %land.lhs.true.59
	movq	-32(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB0_32
# BB#31:                                # %if.then.62
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-96(%rbp), %rdi
	movq	%rax, 32(%rdi)
.LBB0_32:                               # %if.end.65
	jmp	.LBB0_33
.LBB0_33:                               # %do.body.66
	movl	gimp_log_flags, %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB0_41
# BB#34:                                # %if.then.68
	cmpq	$0, -32(%rbp)
	je	.LBB0_36
# BB#35:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB0_37
.LBB0_36:                               # %cond.false
	movabsq	$.L.str.4, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB0_37
.LBB0_37:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpq	$0, -24(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB0_39
# BB#38:                                # %cond.true.71
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB0_40
.LBB0_39:                               # %cond.false.72
	movabsq	$.L.str.4, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB0_40
.LBB0_40:                               # %cond.end.73
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	$8, %edi
	movabsq	$.L__func__.gimp_help_show, %rsi
	movl	$137, %edx
	movabsq	$.L.str.3, %rcx
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_log
.LBB0_41:                               # %if.end.75
	jmp	.LBB0_42
.LBB0_42:                               # %do.end.76
	movabsq	$gimp_idle_help, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB0_43:                               # %if.end.78
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_help_show, .Lfunc_end0-gimp_help_show
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_help_get_locales,@function
gimp_help_get_locales:                  # @gimp_help_get_locales
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 672(%rax)
	je	.LBB1_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	672(%rax), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB1_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	672(%rax), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB1_4
.LBB1_3:                                # %if.end
	callq	g_get_language_names
	movabsq	$.L.str.32, %rdi
	movq	%rax, %rsi
	callq	g_strjoinv
	movq	%rax, -8(%rbp)
.LBB1_4:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_help_get_locales, .Lfunc_end1-gimp_help_get_locales
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_idle_help,@function
gimp_idle_help:                         # @gimp_idle_help
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB2_4
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 696(%rax)
	jne	.LBB2_4
# BB#2:                                 # %land.lhs.true.4
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_help_user_manual_is_installed
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_help_query_user_manual_online
	movl	$0, -4(%rbp)
	jmp	.LBB2_13
.LBB2_4:                                # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 680(%rax)
	jne	.LBB2_8
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_help_browser
	cmpl	$0, %eax
	je	.LBB2_7
# BB#6:                                 # %if.then.12
	movabsq	$.L.str.9, %rax
	movq	%rax, -32(%rbp)
.LBB2_7:                                # %if.end.13
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.14
	movq	-24(%rbp), %rax
	cmpl	$1, 680(%rax)
	jne	.LBB2_10
# BB#9:                                 # %if.then.17
	movabsq	$.L.str.10, %rax
	movq	%rax, -32(%rbp)
.LBB2_10:                               # %if.end.18
	cmpq	$0, -32(%rbp)
	je	.LBB2_12
# BB#11:                                # %if.then.20
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %r8
	movq	-16(%rbp), %rax
	movq	32(%rax), %r9
	callq	gimp_help_call
.LBB2_12:                               # %if.end.24
	movq	-16(%rbp), %rdi
	callq	gimp_idle_help_free
	movl	$0, -4(%rbp)
.LBB2_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_idle_help, .Lfunc_end2-gimp_idle_help
	.cfi_endproc

	.globl	gimp_help_user_manual_is_installed
	.align	16, 0x90
	.type	gimp_help_user_manual_is_installed,@function
gimp_help_user_manual_is_installed:     # @gimp_help_user_manual_is_installed
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_help_user_manual_is_installed, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_25
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movabsq	$.L.str.5, %rdi
	callq	g_getenv
	cmpq	$0, %rax
	je	.LBB3_14
# BB#13:                                # %if.then.13
	movl	$1, -4(%rbp)
	jmp	.LBB3_25
.LBB3_14:                               # %if.end.14
	callq	gimp_help_get_user_manual_basedir
	movl	$4, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB3_24
# BB#15:                                # %if.then.18
	movq	-16(%rbp), %rdi
	callq	gimp_help_get_locales
	movl	$58, %esi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	strchr
	movq	%rax, -80(%rbp)
.LBB3_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -80(%rbp)
	movb	%cl, -105(%rbp)         # 1-byte Spill
	je	.LBB3_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB3_16 Depth=1
	cmpl	$0, -28(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB3_18:                               # %land.end
                                        #   in Loop: Header=BB3_16 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_19
	jmp	.LBB3_21
.LBB3_19:                               # %for.body
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strndup
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movl	$1, %esi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_file_test
	movl	%eax, -28(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB3_16 Depth=1
	movl	$58, %esi
	movq	-72(%rbp), %rdi
	callq	strchr
	movq	%rax, -80(%rbp)
	jmp	.LBB3_16
.LBB3_21:                               # %for.end
	movq	-64(%rbp), %rdi
	callq	g_free
	cmpl	$0, -28(%rbp)
	jne	.LBB3_23
# BB#22:                                # %if.then.33
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.6, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename
	movl	$1, %esi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_file_test
	movl	%eax, -28(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_free
.LBB3_23:                               # %if.end.38
	jmp	.LBB3_24
.LBB3_24:                               # %if.end.39
	movq	-24(%rbp), %rdi
	callq	g_free
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_25:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_help_user_manual_is_installed, .Lfunc_end3-gimp_help_user_manual_is_installed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_help_get_user_manual_basedir,@function
gimp_help_get_user_manual_basedir:      # @gimp_help_get_user_manual_basedir
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
	callq	gimp_data_directory
	movabsq	$.L.str.33, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_help_get_user_manual_basedir, .Lfunc_end4-gimp_help_get_user_manual_basedir
	.cfi_endproc

	.globl	gimp_help_user_manual_changed
	.align	16, 0x90
	.type	gimp_help_user_manual_changed,@function
gimp_help_user_manual_changed:          # @gimp_help_user_manual_changed
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_help_user_manual_changed, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_21
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_temporary_procedure_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_14
# BB#13:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB5_19
.LBB5_14:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_17
# BB#15:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_17
# BB#16:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB5_18
.LBB5_17:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_18:                               # %if.end.31
	jmp	.LBB5_19
.LBB5_19:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_21
# BB#20:                                # %if.then.35
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_temporary_procedure_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	288(%rax), %rdi
	callq	gimp_plug_in_close
.LBB5_21:                               # %if.end.38
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_help_user_manual_changed, .Lfunc_end5-gimp_help_user_manual_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_help_query_user_manual_online,@function
gimp_help_query_user_manual_online:     # @gimp_help_query_user_manual_online
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
	subq	$192, %rsp
	movabsq	$.L.str.11, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str.12, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movabsq	$.L.str.13, %rdx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$-6, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_message_dialog_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$4294967293, %edx       # imm = 0xFFFFFFFD
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_dialog_add_button
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rdi
	movl	$4, %esi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_image_new_from_stock
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_image
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967293, %esi       # imm = 0xFFFFFFFD
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967293, %esi       # imm = 0xFFFFFFFD
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_progress_get_window_id
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_window_set_transient_for
.LBB6_3:                                # %if.end
	jmp	.LBB6_4
.LBB6_4:                                # %if.end.19
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_help_query_online_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rdi
	movq	264(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-16(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rdi
	movq	264(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_help_query_user_manual_online, .Lfunc_end6-gimp_help_query_user_manual_online
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_help_browser,@function
gimp_help_browser:                      # @gimp_help_browser
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpl	$0, gimp_help_browser.busy
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB7_11
.LBB7_2:                                # %if.end
	movabsq	$.L.str.9, %rsi
	movl	$1, gimp_help_browser.busy
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_8
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.20, %rsi
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_5
# BB#4:                                 # %if.then.6
	movabsq	$.L.str.21, %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.22, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.23, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	gimp_help_browser_error
	movl	$0, gimp_help_browser.busy
	movl	$0, -4(%rbp)
	jmp	.LBB7_11
.LBB7_5:                                # %if.end.10
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_help_get_help_domains
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_procedure_get_arguments
	movl	$5, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_value_array_truncate
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_value_set_int
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-56(%rbp), %rsi
	movslq	-44(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_stringarray
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	-64(%rbp), %rsi
	movslq	-44(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_stringarray
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_get_user_context
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-72(%rbp), %rsi
	movq	-40(%rbp), %r8
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_procedure_execute_async
	movq	-40(%rbp), %rdi
	callq	g_value_array_free
	cmpq	$0, -72(%rbp)
	je	.LBB7_7
# BB#6:                                 # %if.then.24
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	movq	-72(%rbp), %rdi
	callq	g_error_free
.LBB7_7:                                # %if.end.26
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.27
	movabsq	$.L.str.9, %rsi
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_10
# BB#9:                                 # %if.then.31
	movabsq	$.L.str.24, %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.25, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_help_browser_error
	movl	$0, gimp_help_browser.busy
	movl	$0, -4(%rbp)
	jmp	.LBB7_11
.LBB7_10:                               # %if.end.34
	movl	$0, gimp_help_browser.busy
	movl	$1, -4(%rbp)
.LBB7_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_help_browser, .Lfunc_end7-gimp_help_browser
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_help_call,@function
gimp_help_call:                         # @gimp_help_call
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
	subq	$368, %rsp              # imm = 0x170
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-40(%rbp), %rdi
	movl	$.L.str.9, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_17
# BB#1:                                 # %if.then
	movq	$0, -88(%rbp)
# BB#2:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB8_13
# BB#3:                                 # %if.then.2
	movq	-40(%rbp), %r8
	cmpq	$0, -48(%rbp)
	movq	%r8, -152(%rbp)         # 8-byte Spill
	je	.LBB8_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB8_6
.LBB8_5:                                # %cond.false
	movabsq	$.L.str.4, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB8_6
.LBB8_6:                                # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	cmpq	$0, -56(%rbp)
	movq	%rax, -168(%rbp)        # 8-byte Spill
	je	.LBB8_8
# BB#7:                                 # %cond.true.5
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB8_9
.LBB8_8:                                # %cond.false.6
	movabsq	$.L.str.4, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB8_9
.LBB8_9:                                # %cond.end.7
	movq	-176(%rbp), %rax        # 8-byte Reload
	cmpq	$0, -64(%rbp)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	je	.LBB8_11
# BB#10:                                # %cond.true.10
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB8_12
.LBB8_11:                               # %cond.false.11
	movabsq	$.L.str.4, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB8_12
.LBB8_12:                               # %cond.end.12
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	$8, %edi
	movabsq	$.L__func__.gimp_help_call, %rsi
	movl	$419, %edx              # imm = 0x1A3
	movabsq	$.L.str.30, %rcx
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	-168(%rbp), %r9         # 8-byte Reload
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB8_13:                               # %if.end
	jmp	.LBB8_14
.LBB8_14:                               # %do.end
	movq	-24(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	leaq	-88(%rbp), %rcx
	movl	$64, %edx
	movl	%edx, %r9d
	movl	$4, %edx
	movl	%edx, %edi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %r10
	movq	-64(%rbp), %r11
	movq	-200(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$64, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	$64, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	$4, 40(%rsp)
	movb	$0, %al
	callq	gimp_pdb_execute_procedure_by_name
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_value_array_free
	cmpq	$0, -88(%rbp)
	je	.LBB8_16
# BB#15:                                # %if.then.17
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	movq	-88(%rbp), %rdi
	callq	g_error_free
.LBB8_16:                               # %if.end.18
	jmp	.LBB8_40
.LBB8_17:                               # %if.end.19
	movabsq	$.L.str.8, %rsi
	movq	-24(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB8_23
# BB#18:                                # %if.then.23
	movabsq	$.L.str.31, %rsi
	movq	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB8_20
# BB#19:                                # %if.then.28
	jmp	.LBB8_40
.LBB8_20:                               # %if.end.29
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_help_get_help_domains
	movl	%eax, -100(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_procedure_get_arguments
	movl	$4, %esi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_value_array_truncate
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-100(%rbp), %esi
	callq	g_value_set_int
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-112(%rbp), %rsi
	movslq	-100(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_stringarray
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-100(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	-120(%rbp), %rsi
	movslq	-100(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_stringarray
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	gimp_get_user_context
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	leaq	-128(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-96(%rbp), %r8
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_procedure_execute_async
	movq	-96(%rbp), %rdi
	callq	g_value_array_free
	cmpq	$0, -128(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.41
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-24(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	movq	-128(%rbp), %rdi
	callq	g_error_free
.LBB8_22:                               # %if.end.43
	jmp	.LBB8_23
.LBB8_23:                               # %if.end.44
	movabsq	$.L.str.8, %rsi
	movq	-24(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB8_40
# BB#24:                                # %if.then.48
	movq	$0, -144(%rbp)
# BB#25:                                # %do.body.51
	movl	gimp_log_flags, %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB8_36
# BB#26:                                # %if.then.54
	movq	-40(%rbp), %r8
	cmpq	$0, -48(%rbp)
	movq	%r8, -248(%rbp)         # 8-byte Spill
	je	.LBB8_28
# BB#27:                                # %cond.true.56
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB8_29
.LBB8_28:                               # %cond.false.57
	movabsq	$.L.str.4, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB8_29
.LBB8_29:                               # %cond.end.58
	movq	-256(%rbp), %rax        # 8-byte Reload
	cmpq	$0, -56(%rbp)
	movq	%rax, -264(%rbp)        # 8-byte Spill
	je	.LBB8_31
# BB#30:                                # %cond.true.61
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB8_32
.LBB8_31:                               # %cond.false.62
	movabsq	$.L.str.4, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB8_32
.LBB8_32:                               # %cond.end.63
	movq	-272(%rbp), %rax        # 8-byte Reload
	cmpq	$0, -64(%rbp)
	movq	%rax, -280(%rbp)        # 8-byte Spill
	je	.LBB8_34
# BB#33:                                # %cond.true.66
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB8_35
.LBB8_34:                               # %cond.false.67
	movabsq	$.L.str.4, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB8_35
.LBB8_35:                               # %cond.end.68
	movq	-288(%rbp), %rax        # 8-byte Reload
	movl	$8, %edi
	movabsq	$.L__func__.gimp_help_call, %rsi
	movl	$494, %edx              # imm = 0x1EE
	movabsq	$.L.str.30, %rcx
	movq	-248(%rbp), %r8         # 8-byte Reload
	movq	-264(%rbp), %r9         # 8-byte Reload
	movq	-280(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB8_36:                               # %if.end.70
	jmp	.LBB8_37
.LBB8_37:                               # %do.end.71
	movq	-24(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	leaq	-144(%rbp), %rcx
	movabsq	$.L.str.8, %r8
	movl	$64, %edx
	movl	%edx, %r9d
	movl	$4, %edx
	movl	%edx, %edi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	-64(%rbp), %rbx
	movq	-296(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$64, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	$64, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	$64, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movq	$4, 56(%rsp)
	movb	$0, %al
	callq	gimp_pdb_execute_procedure_by_name
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	g_value_array_free
	cmpq	$0, -144(%rbp)
	je	.LBB8_39
# BB#38:                                # %if.then.76
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-24(%rbp), %rdi
	movq	-144(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	movq	-144(%rbp), %rdi
	callq	g_error_free
.LBB8_39:                               # %if.end.78
	jmp	.LBB8_40
.LBB8_40:                               # %if.end.79
	addq	$368, %rsp              # imm = 0x170
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_help_call, .Lfunc_end8-gimp_help_call
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_idle_help_free,@function
gimp_idle_help_free:                    # @gimp_idle_help_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	g_free
# BB#1:                                 # %do.body
	movl	$40, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_idle_help_free, .Lfunc_end9-gimp_idle_help_free
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_help_query_online_response,@function
gimp_help_query_online_response:        # @gimp_help_query_online_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpl	$-3, -12(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.19, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	32(%rdi), %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	callq	gimp_help_show
.LBB10_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_idle_help_free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_help_query_online_response, .Lfunc_end10-gimp_help_query_online_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_help_browser_error,@function
gimp_help_browser_error:                # @gimp_help_browser_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$168, %rsp
.Ltmp38:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.26, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str.12, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movabsq	$.L.str.13, %rdx
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%r9d, %ecx
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -92(%rbp)        # 4-byte Spill
	movl	%r10d, -96(%rbp)        # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	cmpq	$0, -24(%rbp)
	je	.LBB11_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_progress_get_window_id
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then.6
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_window_set_transient_for
.LBB11_3:                               # %if.end
	jmp	.LBB11_4
.LBB11_4:                               # %if.end.9
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rsi
	movq	264(%rax), %rdi
	movq	-40(%rbp), %rdx
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-56(%rbp), %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rsi
	movq	264(%rax), %rdi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-56(%rbp), %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	jne	.LBB11_6
# BB#5:                                 # %if.then.18
	movabsq	$.L.str.28, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB11_6:                               # %if.end.19
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_help_browser_error, .Lfunc_end11-gimp_help_browser_error
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_help_get_help_domains,@function
gimp_help_get_help_domains:             # @gimp_help_get_help_domains
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	leaq	-40(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	376(%rdx), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_plug_in_manager_get_help_domains
	movl	$8, %r8d
	movl	%r8d, %esi
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movl	$8, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-48(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rdi
	callq	g_malloc0_n
	movabsq	$.L.str.29, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	g_strdup
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_help_get_default_domain_uri
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	movl	$0, -44(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_help_get_help_domains, .Lfunc_end12-gimp_help_get_help_domains
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_help_get_default_domain_uri,@function
gimp_help_get_default_domain_uri:       # @gimp_help_get_default_domain_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rdi
	movq	%rax, -24(%rbp)
	callq	g_getenv
	cmpq	$0, %rax
	je	.LBB13_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rdi
	callq	g_getenv
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB13_5
.LBB13_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 696(%rax)
	je	.LBB13_4
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	704(%rax), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB13_5
.LBB13_4:                               # %if.end.9
	callq	gimp_help_get_user_manual_basedir
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdx, %rsi
	callq	g_filename_to_uri
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_help_get_default_domain_uri, .Lfunc_end13-gimp_help_get_default_domain_uri
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_help_show,@object # @__func__.gimp_help_show
.L__func__.gimp_help_show:
	.asciz	"gimp_help_show"
	.size	.L__func__.gimp_help_show, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.2, 48

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"request for help-id '%s' from help-domain '%s'"
	.size	.L.str.3, 47

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"(null)"
	.size	.L.str.4, 7

	.type	.L__func__.gimp_help_user_manual_is_installed,@object # @__func__.gimp_help_user_manual_is_installed
.L__func__.gimp_help_user_manual_is_installed:
	.asciz	"gimp_help_user_manual_is_installed"
	.size	.L__func__.gimp_help_user_manual_is_installed, 35

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP2_HELP_URI"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-help.xml"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"en"
	.size	.L.str.7, 3

	.type	.L__func__.gimp_help_user_manual_changed,@object # @__func__.gimp_help_user_manual_changed
.L__func__.gimp_help_user_manual_changed:
	.asciz	"gimp_help_user_manual_changed"
	.size	.L__func__.gimp_help_user_manual_changed, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"extension-gimp-help-temp"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"extension-gimp-help-browser-temp"
	.size	.L.str.9, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-web-browser"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP user manual is missing"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-user-manual"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gtk-cancel"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_Read Online"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-web"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"response"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The GIMP user manual is not installed on your computer."
	.size	.L.str.17, 56

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"You may either install the additional help package or change your preferences to use the online version."
	.size	.L.str.18, 105

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"user-manual-online"
	.size	.L.str.19, 19

	.type	gimp_help_browser.busy,@object # @gimp_help_browser.busy
	.local	gimp_help_browser.busy
	.comm	gimp_help_browser.busy,4,4
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"extension-gimp-help-browser"
	.size	.L.str.20, 28

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Help browser is missing"
	.size	.L.str.21, 24

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"The GIMP help browser is not available."
	.size	.L.str.22, 40

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"The GIMP help browser plug-in appears to be missing from your installation. You may instead use the web browser for reading the help pages."
	.size	.L.str.23, 140

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Help browser doesn't start"
	.size	.L.str.24, 27

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Could not start the GIMP help browser plug-in."
	.size	.L.str.25, 47

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Use _Web Browser"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"help-browser"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"http://www.gimp.org/help"
	.size	.L.str.29, 25

	.type	.L__func__.gimp_help_call,@object # @__func__.gimp_help_call
.L__func__.gimp_help_call:
	.asciz	"gimp_help_call"
	.size	.L__func__.gimp_help_call, 15

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Calling help via %s: %s %s %s"
	.size	.L.str.30, 30

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"extension-gimp-help"
	.size	.L.str.31, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	":"
	.size	.L.str.32, 2

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"help"
	.size	.L.str.33, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
