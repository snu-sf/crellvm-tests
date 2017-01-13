	.text
	.file	"themes.bc"
	.globl	themes_init
	.align	16, 0x90
	.type	themes_init,@function
themes_init:                            # @themes_init
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L__func__.themes_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_15
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rcx
	movq	%rax, -16(%rbp)
	movq	%rcx, %rdx
	callq	g_hash_table_new_full
	movq	%rax, themes_hash
	movq	-16(%rbp), %rax
	cmpq	$0, 648(%rax)
	je	.LBB0_14
# BB#13:                                # %if.then.16
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	648(%rcx), %rdi
	callq	gimp_config_path_expand
	movl	$4, %esi
	movabsq	$themes_directories_foreach, %rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_datafiles_read_directories
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB0_14:                               # %if.end.20
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	656(%rax), %rsi
	callq	themes_apply_theme
	movabsq	$.L.str.2, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_rc_parse
	movq	-24(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.3, %rsi
	movabsq	$themes_theme_change_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB0_15:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	themes_init, .Lfunc_end0-themes_init
	.cfi_endproc

	.align	16, 0x90
	.type	themes_directories_foreach,@function
themes_directories_foreach:             # @themes_directories_foreach
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_filename_to_utf8
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.12, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_print
.LBB1_2:                                # %if.end
	movq	themes_hash, %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_strdup
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_hash_table_insert
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	themes_directories_foreach, .Lfunc_end1-themes_directories_foreach
	.cfi_endproc

	.align	16, 0x90
	.type	themes_apply_theme,@function
themes_apply_theme:                     # @themes_apply_theme
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.themes_apply_theme, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_21
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	themes_get_theme_dir
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB2_14
# BB#13:                                # %if.then.13
	movabsq	$.L.str.7, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -32(%rbp)
	jmp	.LBB2_15
.LBB2_14:                               # %if.else.15
	callq	gimp_gtkrc
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -32(%rbp)
.LBB2_15:                               # %if.end.18
	movabsq	$.L.str.7, %rdi
	callq	gimp_personal_rc_file
	movabsq	$.L.str.2, %rdi
	movq	%rax, -40(%rbp)
	callq	gimp_personal_rc_file
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB2_17
# BB#16:                                # %if.then.22
	movq	-48(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.8, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB2_17:                               # %if.end.24
	movabsq	$.L.str.9, %rsi
	movq	-48(%rbp), %rdi
	callq	fopen
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB2_19
# BB#18:                                # %if.then.27
	movabsq	$.L.str.10, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edi, %edi
	movl	%edi, %esi
	movl	$2, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
	jmp	.LBB2_20
.LBB2_19:                               # %if.end.32
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	g_strescape
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_strescape
	movabsq	$.L.str.11, %rsi
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %r8
	movb	$0, %al
	callq	fprintf
	movq	-88(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	fclose
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB2_20:                               # %cleanup
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB2_21:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	themes_apply_theme, .Lfunc_end2-themes_apply_theme
	.cfi_endproc

	.align	16, 0x90
	.type	themes_theme_change_notify,@function
themes_theme_change_notify:             # @themes_theme_change_notify
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	656(%rdx), %rsi
	callq	themes_apply_theme
	callq	gtk_rc_reparse_all
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	themes_theme_change_notify, .Lfunc_end3-themes_theme_change_notify
	.cfi_endproc

	.globl	themes_exit
	.align	16, 0x90
	.type	themes_exit,@function
themes_exit:                            # @themes_exit
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.themes_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_14
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	cmpq	$0, themes_hash
	je	.LBB4_14
# BB#13:                                # %if.then.12
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$themes_theme_change_notify, %rdx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	themes_hash, %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_hash_table_destroy
	movq	$0, themes_hash
.LBB4_14:                               # %if.end.14
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	themes_exit, .Lfunc_end4-themes_exit
	.cfi_endproc

	.globl	themes_list_themes
	.align	16, 0x90
	.type	themes_list_themes,@function
themes_list_themes:                     # @themes_list_themes
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.themes_list_themes, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_20
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.themes_list_themes, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_20
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	themes_hash, %rdi
	callq	g_hash_table_size
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-24(%rbp), %rdi
	cmpl	$0, (%rdi)
	jle	.LBB5_19
# BB#18:                                # %if.then.19
	movl	$8, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	(%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movabsq	$themes_list_themes_foreach, %rsi
	leaq	-64(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	themes_hash, %rdi
	movq	%rcx, %rdx
	callq	g_hash_table_foreach
	movl	$8, %r8d
	movl	%r8d, %edx
	movabsq	$themes_name_compare, %rcx
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	qsort
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %if.end.24
	movq	$0, -8(%rbp)
.LBB5_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	themes_list_themes, .Lfunc_end5-themes_list_themes
	.cfi_endproc

	.align	16, 0x90
	.type	themes_list_themes_foreach,@function
themes_list_themes_foreach:             # @themes_list_themes_foreach
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	addq	$8, %rdx
	movq	%rdx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	themes_list_themes_foreach, .Lfunc_end6-themes_list_themes_foreach
	.cfi_endproc

	.align	16, 0x90
	.type	themes_name_compare,@function
themes_name_compare:                    # @themes_name_compare
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	strcmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	themes_name_compare, .Lfunc_end7-themes_name_compare
	.cfi_endproc

	.globl	themes_get_theme_dir
	.align	16, 0x90
	.type	themes_get_theme_dir,@function
themes_get_theme_dir:                   # @themes_get_theme_dir
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.themes_get_theme_dir, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_15
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	cmpq	$0, -24(%rbp)
	jne	.LBB8_14
# BB#13:                                # %if.then.12
	movabsq	$.L.str.5, %rax
	movq	%rax, -24(%rbp)
.LBB8_14:                               # %if.end.13
	movq	themes_hash, %rdi
	movq	-24(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -8(%rbp)
.LBB8_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	themes_get_theme_dir, .Lfunc_end8-themes_get_theme_dir
	.cfi_endproc

	.globl	themes_get_theme_file
	.align	16, 0x90
	.type	themes_get_theme_file,@function
themes_get_theme_file:                  # @themes_get_theme_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$512, %rsp              # imm = 0x200
	testb	%al, %al
	movaps	%xmm7, -304(%rbp)       # 16-byte Spill
	movaps	%xmm6, -320(%rbp)       # 16-byte Spill
	movaps	%xmm5, -336(%rbp)       # 16-byte Spill
	movaps	%xmm4, -352(%rbp)       # 16-byte Spill
	movaps	%xmm3, -368(%rbp)       # 16-byte Spill
	movaps	%xmm2, -384(%rbp)       # 16-byte Spill
	movaps	%xmm1, -400(%rbp)       # 16-byte Spill
	movaps	%xmm0, -416(%rbp)       # 16-byte Spill
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r9, -432(%rbp)         # 8-byte Spill
	movq	%r8, -440(%rbp)         # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	je	.LBB9_28
# BB#27:                                # %entry
	movaps	-416(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -240(%rbp)
	movaps	-400(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -224(%rbp)
	movaps	-384(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -208(%rbp)
	movaps	-368(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -192(%rbp)
	movaps	-352(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -176(%rbp)
	movaps	-336(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -160(%rbp)
	movaps	-320(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -144(%rbp)
	movaps	-304(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -128(%rbp)
.LBB9_28:                               # %entry
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -248(%rbp)
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -256(%rbp)
	movq	-448(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -264(%rbp)
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -272(%rbp)
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	%r8, -16(%rbp)
	movq	%rdi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.themes_get_theme_file, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_26
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.themes_get_theme_file, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_26
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	movq	-24(%rbp), %rdi
	callq	g_strdup
	leaq	-80(%rbp), %rdi
	movq	%rax, -40(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, 16(%rdi)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rdi)
	movl	$48, 4(%rdi)
	movl	$16, (%rdi)
.LBB9_18:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	ja	.LBB9_20
# BB#19:                                # %vaarg.in_reg
                                        #   in Loop: Header=BB9_18 Depth=1
	movl	-476(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-472(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB9_21
.LBB9_20:                               # %vaarg.in_mem
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -488(%rbp)        # 8-byte Spill
.LBB9_21:                               # %vaarg.end
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	je	.LBB9_23
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB9_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-112(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_18
.LBB9_23:                               # %while.end
	leaq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	656(%rax), %rsi
	callq	themes_get_theme_dir
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movl	$16, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	jne	.LBB9_25
# BB#24:                                # %if.then.32
	movq	-56(%rbp), %rdi
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	themes_get_theme_dir
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -56(%rbp)
.LBB9_25:                               # %if.end.35
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB9_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end9:
	.size	themes_get_theme_file, .Lfunc_end9-themes_get_theme_file
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-GUI"
	.size	.L.str, 9

	.type	.L__func__.themes_init,@object # @__func__.themes_init
.L__func__.themes_init:
	.asciz	"themes_init"
	.size	.L__func__.themes_init, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	themes_hash,@object     # @themes_hash
	.local	themes_hash
	.comm	themes_hash,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"themerc"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"notify::theme"
	.size	.L.str.3, 14

	.type	.L__func__.themes_exit,@object # @__func__.themes_exit
.L__func__.themes_exit:
	.asciz	"themes_exit"
	.size	.L__func__.themes_exit, 12

	.type	.L__func__.themes_list_themes,@object # @__func__.themes_list_themes
.L__func__.themes_list_themes:
	.asciz	"themes_list_themes"
	.size	.L__func__.themes_list_themes, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"n_themes != NULL"
	.size	.L.str.4, 17

	.type	.L__func__.themes_get_theme_dir,@object # @__func__.themes_get_theme_dir
.L__func__.themes_get_theme_dir:
	.asciz	"themes_get_theme_dir"
	.size	.L__func__.themes_get_theme_dir, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Default"
	.size	.L.str.5, 8

	.type	.L__func__.themes_get_theme_file,@object # @__func__.themes_get_theme_file
.L__func__.themes_get_theme_file:
	.asciz	"themes_get_theme_file"
	.size	.L__func__.themes_get_theme_file, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"first_component != NULL"
	.size	.L.str.6, 24

	.type	.L__func__.themes_apply_theme,@object # @__func__.themes_apply_theme
.L__func__.themes_apply_theme:
	.asciz	"themes_apply_theme"
	.size	.L__func__.themes_apply_theme, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gtkrc"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Writing '%s'\n"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"w"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.10, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"# GIMP themerc\n#\n# This file is written on GIMP startup and on every theme change.\n# It is NOT supposed to be edited manually. Edit your personal\n# gtkrc file instead (%s).\n\ninclude \"%s\"\ninclude \"%s\"\n\n# end of themerc\n"
	.size	.L.str.11, 219

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Adding theme '%s' (%s)\n"
	.size	.L.str.12, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
