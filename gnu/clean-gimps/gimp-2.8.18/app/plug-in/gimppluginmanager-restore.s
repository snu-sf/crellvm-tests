	.text
	.file	"gimppluginmanager-restore.bc"
	.globl	gimp_plug_in_manager_restore
	.align	16, 0x90
	.type	gimp_plug_in_manager_restore,@function
gimp_plug_in_manager_restore:           # @gimp_plug_in_manager_restore
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
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_restore, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_57
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_restore, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_57
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpq	$0, -24(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.41
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_restore, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_57
.LBB0_28:                               # %if.end.43
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.44
	movl	$1, %edx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_context_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_plug_in_manager_search
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_manager_get_pluginrc
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_plug_in_manager_read_pluginrc
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_plug_in_manager_query_new
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_plug_in_manager_init_plug_ins
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB0_30:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
	cmpq	$0, -48(%rbp)
	je	.LBB0_37
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB0_32:                               # %for.cond.51
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB0_35
# BB#33:                                # %for.body.53
                                        #   in Loop: Header=BB0_32 Depth=2
	movq	-8(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_plug_in_manager_add_procedure
# BB#34:                                # %for.inc
                                        #   in Loop: Header=BB0_32 Depth=2
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB0_32
.LBB0_35:                               # %for.end
                                        #   in Loop: Header=BB0_30 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               # %for.inc.55
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_30
.LBB0_37:                               # %for.end.57
	movq	-8(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB0_43
# BB#38:                                # %if.then.59
	movq	-32(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB0_40
# BB#39:                                # %if.then.61
	movq	-40(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.4, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB0_40:                               # %if.end.63
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	plug_in_rc_write
	cmpl	$0, %eax
	jne	.LBB0_42
# BB#41:                                # %if.then.67
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-56(%rbp), %rdi
	callq	g_clear_error
.LBB0_42:                               # %if.end.68
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
.LBB0_43:                               # %if.end.70
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -48(%rbp)
.LBB0_44:                               # %for.cond.72
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_52
# BB#45:                                # %for.body.74
                                        #   in Loop: Header=BB0_44 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB0_47
# BB#46:                                # %if.then.79
                                        #   in Loop: Header=BB0_44 Depth=1
	movq	-8(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-128(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	56(%rax), %rcx
	callq	gimp_plug_in_manager_add_locale_domain
	jmp	.LBB0_48
.LBB0_47:                               # %if.else.81
                                        #   in Loop: Header=BB0_44 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-128(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-128(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_plug_in_manager_get_locale_domain
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_plug_in_def_set_locale_domain
.LBB0_48:                               # %if.end.84
                                        #   in Loop: Header=BB0_44 Depth=1
	movq	-128(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB0_50
# BB#49:                                # %if.then.86
                                        #   in Loop: Header=BB0_44 Depth=1
	movq	-8(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-128(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	72(%rax), %rcx
	callq	gimp_plug_in_manager_add_help_domain
.LBB0_50:                               # %if.end.89
                                        #   in Loop: Header=BB0_44 Depth=1
	jmp	.LBB0_51
.LBB0_51:                               # %for.inc.90
                                        #   in Loop: Header=BB0_44 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_44
.LBB0_52:                               # %for.end.92
	movabsq	$g_object_unref, %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_slist_free_full
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_manager_bind_text_domains
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB0_53:                               # %for.cond.95
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_56
# BB#54:                                # %for.body.97
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	callq	gimp_plug_in_manager_add_to_db
# BB#55:                                # %for.inc.99
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_53
.LBB0_56:                               # %for.end.101
	movabsq	$gimp_plug_in_manager_file_proc_compare, %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	g_slist_sort_with_data
	movabsq	$gimp_plug_in_manager_file_proc_compare, %rsi
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	g_slist_sort_with_data
	movabsq	$gimp_plug_in_manager_file_proc_compare, %rsi
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	g_slist_sort_with_data
	movq	-8(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_plug_in_manager_run_extensions
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_57:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_manager_restore, .Lfunc_end0-gimp_plug_in_manager_restore
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_search,@function
gimp_plug_in_manager_search:            # @gimp_plug_in_manager_search
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
	movabsq	$.L.str.5, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	g_getenv
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gimp_interpreter_db_get_extensions
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.3
	movabsq	$.L.str.6, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movb	$0, %al
	callq	g_strconcat
	movabsq	$.L.str.5, %rdi
	movl	$1, %edx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	callq	g_setenv
	movq	-48(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %if.end.6
	movabsq	$.L.str.7, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rsi
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.9, %rdi
	callq	g_getenv
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_6
# BB#5:                                 # %if.then.11
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	72(%rcx), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -24(%rbp)
.LBB1_6:                                # %if.end.13
	movl	$8, %esi
	movabsq	$gimp_plug_in_manager_add_from_file, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_datafiles_read_directories
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_manager_search, .Lfunc_end1-gimp_plug_in_manager_search
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_get_pluginrc,@function
gimp_plug_in_manager_get_pluginrc:      # @gimp_plug_in_manager_get_pluginrc
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
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	cmpq	$0, 336(%rdi)
	je	.LBB2_4
# BB#1:                                 # %if.then
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	336(%rcx), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	jne	.LBB2_3
# BB#2:                                 # %if.then.6
	callq	gimp_directory
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB2_3:                                # %if.end
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movabsq	$.L.str.12, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -24(%rbp)
.LBB2_5:                                # %if.end.10
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_manager_get_pluginrc, .Lfunc_end2-gimp_plug_in_manager_get_pluginrc
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_read_pluginrc,@function
gimp_plug_in_manager_read_pluginrc:     # @gimp_plug_in_manager_read_pluginrc
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
	subq	$80, %rsp
	movabsq	$.L.str.13, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorps	%xmm0, %xmm0
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 56(%rax)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB3_2:                                # %if.end
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	plug_in_rc_parse
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB3_11
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB3_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB3_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_plug_in_manager_add_from_rc
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB3_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_9
.LBB3_8:                                # %cond.false
                                        #   in Loop: Header=BB3_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_9
.LBB3_9:                                # %cond.end
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB3_4
.LBB3_10:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	g_slist_free
	jmp	.LBB3_16
.LBB3_11:                               # %if.else
	cmpq	$0, -40(%rbp)
	je	.LBB3_15
# BB#12:                                # %if.then.10
	movq	-40(%rbp), %rax
	cmpl	$1, 4(%rax)
	je	.LBB3_14
# BB#13:                                # %if.then.11
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
.LBB3_14:                               # %if.end.13
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
.LBB3_15:                               # %if.end.14
	jmp	.LBB3_16
.LBB3_16:                               # %if.end.15
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_manager_read_pluginrc, .Lfunc_end3-gimp_plug_in_manager_read_pluginrc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_plug_in_manager_query_new,@function
gimp_plug_in_manager_query_new:         # @gimp_plug_in_manager_query_new
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
	subq	$80, %rsp
	movabsq	$.L.str.21, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rsi
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 88(%rax)
	je	.LBB4_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_5
.LBB4_5:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_1
.LBB4_6:                                # %for.end
	cmpl	$0, -36(%rbp)
	je	.LBB4_16
# BB#7:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movl	$1, 48(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -52(%rbp)
.LBB4_8:                                # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_15
# BB#9:                                 # %for.body.7
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$0, 88(%rax)
	je	.LBB4_13
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_filename_display_basename
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rsi
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	*%rax
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 56(%rax)
	je	.LBB4_12
# BB#11:                                # %if.then.17
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.22, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB4_12:                               # %if.end.20
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	gimp_plug_in_manager_call_query
.LBB4_13:                               # %if.end.21
                                        #   in Loop: Header=BB4_8 Depth=1
	jmp	.LBB4_14
.LBB4_14:                               # %for.inc.22
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_8
.LBB4_15:                               # %for.end.24
	jmp	.LBB4_16
.LBB4_16:                               # %if.end.25
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.8, %rsi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	*-24(%rbp)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_plug_in_manager_query_new, .Lfunc_end4-gimp_plug_in_manager_query_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_plug_in_manager_init_plug_ins,@function
gimp_plug_in_manager_init_plug_ins:     # @gimp_plug_in_manager_init_plug_ins
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
	movabsq	$.L.str.23, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rsi
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 92(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_5
.LBB5_5:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_1
.LBB5_6:                                # %for.end
	cmpl	$0, -36(%rbp)
	je	.LBB5_16
# BB#7:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -52(%rbp)
.LBB5_8:                                # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_15
# BB#9:                                 # %for.body.7
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$0, 92(%rax)
	je	.LBB5_13
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_filename_display_basename
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rsi
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	*%rax
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 56(%rax)
	je	.LBB5_12
# BB#11:                                # %if.then.17
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.24, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB5_12:                               # %if.end.20
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	gimp_plug_in_manager_call_init
.LBB5_13:                               # %if.end.21
                                        #   in Loop: Header=BB5_8 Depth=1
	jmp	.LBB5_14
.LBB5_14:                               # %for.inc.22
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_8
.LBB5_15:                               # %for.end.24
	jmp	.LBB5_16
.LBB5_16:                               # %if.end.25
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.8, %rsi
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	*-24(%rbp)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_plug_in_manager_init_plug_ins, .Lfunc_end5-gimp_plug_in_manager_init_plug_ins
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_bind_text_domains,@function
gimp_plug_in_manager_bind_text_domains: # @gimp_plug_in_manager_bind_text_domains
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
	subq	$48, %rsp
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_manager_get_locale_domains
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	bindtextdomain
	movabsq	$.L.str.27, %rsi
	movslq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	(%rdi,%rcx,8), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movq	%rax, -48(%rbp)         # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movq	-16(%rbp), %rdi
	callq	g_strfreev
	movq	-24(%rbp), %rdi
	callq	g_strfreev
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_plug_in_manager_bind_text_domains, .Lfunc_end6-gimp_plug_in_manager_bind_text_domains
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_add_to_db,@function
gimp_plug_in_manager_add_to_db:         # @gimp_plug_in_manager_add_to_db
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
.Ltmp24:
	.cfi_offset %rbx, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	520(%rdx), %rdi
	movq	-48(%rbp), %rdx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_pdb_register_procedure
	movq	-48(%rbp), %rax
	cmpl	$0, 220(%rax)
	je	.LBB7_7
# BB#1:                                 # %if.then
	movq	$0, -64(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB7_3
# BB#2:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	520(%rax), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-64(%rbp), %rcx
	movabsq	$.L.str.28, %r8
	movl	$64, %r9d
                                        # kill: R9<def> R9D<kill>
	movl	$4, %r10d
	movl	%r10d, %esi
	movq	-48(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	-48(%rbp), %r11
	movq	232(%r11), %r11
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	%rax, (%rsp)
	movq	$64, 8(%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$64, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	$4, 40(%rsp)
	movb	$0, %al
	callq	gimp_pdb_execute_procedure_by_name
	movq	%rax, -56(%rbp)
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	520(%rax), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-64(%rbp), %rcx
	movabsq	$.L.str.29, %r8
	movl	$64, %r9d
                                        # kill: R9<def> R9D<kill>
	movl	$4, %r10d
	movl	%r10d, %esi
	movq	-48(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	-48(%rbp), %r11
	movq	232(%r11), %r11
	movq	-48(%rbp), %rbx
	movq	240(%rbx), %rbx
	movq	-120(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	%rax, (%rsp)
	movq	$64, 8(%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$64, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	$64, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movq	$4, 56(%rsp)
	movb	$0, %al
	callq	gimp_pdb_execute_procedure_by_name
	movq	%rax, -56(%rbp)
.LBB7_4:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	g_value_array_free
	cmpq	$0, -64(%rbp)
	je	.LBB7_6
# BB#5:                                 # %if.then.15
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	movq	-64(%rbp), %rdi
	callq	g_error_free
.LBB7_6:                                # %if.end.17
	jmp	.LBB7_7
.LBB7_7:                                # %if.end.18
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_plug_in_manager_add_to_db, .Lfunc_end7-gimp_plug_in_manager_add_to_db
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_file_proc_compare,@function
gimp_plug_in_manager_file_proc_compare: # @gimp_plug_in_manager_file_proc_compare
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rsi
	movq	%rax, -48(%rbp)
	movl	$0, -68(%rbp)
	movq	-40(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB8_8
.LBB8_2:                                # %if.end
	movabsq	$.L.str.30, %rsi
	movq	-48(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.9
	movl	$1, -4(%rbp)
	jmp	.LBB8_8
.LBB8_4:                                # %if.end.10
	movq	-40(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_label
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_label
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB8_7
# BB#5:                                 # %land.lhs.true
	cmpq	$0, -64(%rbp)
	je	.LBB8_7
# BB#6:                                 # %if.then.15
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_utf8_collate
	movl	%eax, -68(%rbp)
.LBB8_7:                                # %if.end.17
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB8_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_plug_in_manager_file_proc_compare, .Lfunc_end8-gimp_plug_in_manager_file_proc_compare
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_plug_in_manager_run_extensions,@function
gimp_plug_in_manager_run_extensions:    # @gimp_plug_in_manager_run_extensions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB9_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB9_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$2, 32(%rax)
	jne	.LBB9_6
# BB#4:                                 # %land.lhs.true.4
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 96(%rax)
	jne	.LBB9_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -48(%rbp)
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_7
.LBB9_7:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_1
.LBB9_8:                                # %for.end
	movq	-48(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -52(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB9_21
# BB#9:                                 # %if.then.12
	movabsq	$.L.str.25, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rsi
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movq	-128(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB9_10:                               # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB9_20
# BB#11:                                # %for.body.17
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -104(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB9_13
# BB#12:                                # %if.then.21
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.26, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB9_13:                               # %if.end.23
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	xorl	%edx, %edx
	movl	%edx, %edi
	cvtsi2sdl	-76(%rbp), %xmm0
	cvtsi2sdl	-52(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	%rax, %rsi
	movq	-136(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	xorl	%edi, %edi
	callq	g_value_array_new
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %ecx
	leaq	-104(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	-168(%rbp), %r9         # 8-byte Reload
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_procedure_execute_async
	movq	-96(%rbp), %rdi
	callq	g_value_array_free
	cmpq	$0, -104(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.30
                                        #   in Loop: Header=BB9_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-32(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-104(%rbp), %rdi
	callq	g_clear_error
.LBB9_15:                               # %if.end.31
                                        #   in Loop: Header=BB9_10 Depth=1
	jmp	.LBB9_16
.LBB9_16:                               # %for.inc.32
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB9_18
# BB#17:                                # %cond.true
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB9_19
.LBB9_18:                               # %cond.false
                                        #   in Loop: Header=BB9_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB9_19
.LBB9_19:                               # %cond.end
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movl	-76(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB9_10
.LBB9_20:                               # %for.end.35
	movq	-48(%rbp), %rdi
	callq	g_list_free
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.8, %rsi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	callq	*-24(%rbp)
.LBB9_21:                               # %if.end.36
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_plug_in_manager_run_extensions, .Lfunc_end9-gimp_plug_in_manager_run_extensions
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_add_from_file,@function
gimp_plug_in_manager_add_from_file:     # @gimp_plug_in_manager_add_from_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rdi
	callq	gimp_plug_in_manager_ignore_plugin_basename
	cmpl	$0, %eax
	je	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_9
.LBB10_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB10_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_path_get_basename
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB10_6
# BB#5:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movq	-48(%rbp), %rdi
	callq	g_free
	jmp	.LBB10_9
.LBB10_6:                               # %if.end.8
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_free
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB10_3
.LBB10_8:                               # %for.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_plug_in_def_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	callq	gimp_plug_in_def_set_mtime
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_plug_in_def_set_needs_query
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, 40(%rsi)
.LBB10_9:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_plug_in_manager_add_from_file, .Lfunc_end10-gimp_plug_in_manager_add_from_file
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_ignore_plugin_basename,@function
gimp_plug_in_manager_ignore_plugin_basename: # @gimp_plug_in_manager_ignore_plugin_basename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.11, %rax
	movq	%rdi, -8(%rbp)
	movl	$0, -36(%rbp)
	movq	%rax, %rdi
	callq	g_getenv
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_path_parse
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB11_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB11_4
# BB#3:                                 # %if.then
	movl	$1, -36(%rbp)
	jmp	.LBB11_9
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_5
.LBB11_5:                               # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB11_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB11_8
.LBB11_8:                               # %cond.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB11_1
.LBB11_9:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	gimp_path_free
	movl	-36(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_plug_in_manager_ignore_plugin_basename, .Lfunc_end11-gimp_plug_in_manager_ignore_plugin_basename
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_manager_add_from_rc,@function
gimp_plug_in_manager_add_from_rc:       # @gimp_plug_in_manager_add_from_rc
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_add_from_rc, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_48
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_add_from_rc, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_48
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	jmp	.LBB12_18
.LBB12_18:                              # %do.body.17
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB12_20
# BB#19:                                # %if.then.19
	jmp	.LBB12_21
.LBB12_20:                              # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_add_from_rc, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_48
.LBB12_21:                              # %if.end.21
	jmp	.LBB12_22
.LBB12_22:                              # %do.end.22
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	jne	.LBB12_24
# BB#23:                                # %if.then.26
	movabsq	$.L.str.17, %rdi
	movb	$0, %al
	callq	g_warning
	movq	-16(%rbp), %rdi
	callq	g_object_unref
	jmp	.LBB12_48
.LBB12_24:                              # %if.end.27
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_path_get_basename
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB12_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB12_35
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB12_25 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 224(%rax)
	jne	.LBB12_33
# BB#27:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB12_25 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, 232(%rax)
	jne	.LBB12_33
# BB#28:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB12_25 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, 240(%rax)
	jne	.LBB12_33
# BB#29:                                # %land.lhs.true.37
                                        #   in Loop: Header=BB12_25 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB12_33
# BB#30:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB12_25 Depth=1
	movabsq	$.L.str.18, %rsi
	movq	-64(%rbp), %rax
	movq	160(%rax), %rax
	movq	(%rax), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB12_32
# BB#31:                                # %lor.lhs.false
                                        #   in Loop: Header=BB12_25 Depth=1
	movabsq	$.L.str.19, %rsi
	movq	-64(%rbp), %rax
	movq	160(%rax), %rax
	movq	(%rax), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB12_33
.LBB12_32:                              # %if.then.48
                                        #   in Loop: Header=BB12_25 Depth=1
	movabsq	$.L.str.8, %rdi
	callq	g_strdup
	movq	-64(%rbp), %rdi
	movq	%rax, 224(%rdi)
.LBB12_33:                              # %if.end.51
                                        #   in Loop: Header=BB12_25 Depth=1
	jmp	.LBB12_34
.LBB12_34:                              # %for.inc
                                        #   in Loop: Header=BB12_25 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB12_25
.LBB12_35:                              # %for.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB12_36:                              # %for.cond.52
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB12_45
# BB#37:                                # %for.body.54
                                        #   in Loop: Header=BB12_36 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_path_get_basename
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB12_43
# BB#38:                                # %if.then.62
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB12_41
# BB#39:                                # %land.lhs.true.67
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-72(%rbp), %rcx
	cmpq	80(%rcx), %rax
	jne	.LBB12_41
# BB#40:                                # %if.then.70
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB12_42
.LBB12_41:                              # %if.else.72
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB12_42:                              # %if.end.73
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB12_48
.LBB12_43:                              # %if.end.74
                                        #   in Loop: Header=BB12_36 Depth=1
	movq	-80(%rbp), %rdi
	callq	g_free
# BB#44:                                # %for.inc.75
                                        #   in Loop: Header=BB12_36 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB12_36
.LBB12_45:                              # %for.end.77
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movl	$1, 48(%rdi)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	cmpl	$0, 56(%rdi)
	je	.LBB12_47
# BB#46:                                # %if.then.79
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.20, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
.LBB12_47:                              # %if.end.82
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB12_48:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_plug_in_manager_add_from_rc, .Lfunc_end12-gimp_plug_in_manager_add_from_rc
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB13_2
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
.LBB13_2:                               # %entry
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
.Lfunc_end13:
	.size	g_warning, .Lfunc_end13-g_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.gimp_plug_in_manager_restore,@object # @__func__.gimp_plug_in_manager_restore
.L__func__.gimp_plug_in_manager_restore:
	.asciz	"gimp_plug_in_manager_restore"
	.size	.L__func__.gimp_plug_in_manager_restore, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PLUG_IN_MANAGER (manager)"
	.size	.L.str.1, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"status_callback != NULL"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Writing '%s'\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"PATHEXT"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	":"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Searching Plug-Ins"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_TESTING_PLUGINDIRS"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Skipping duplicate plug-in: '%s'\n"
	.size	.L.str.10, 34

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_TESTING_PLUGINDIRS_BASENAME_IGNORES"
	.size	.L.str.11, 41

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"pluginrc"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Resource configuration"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.14, 14

	.type	.L__func__.gimp_plug_in_manager_add_from_rc,@object # @__func__.gimp_plug_in_manager_add_from_rc
.L__func__.gimp_plug_in_manager_add_from_rc:
	.asciz	"gimp_plug_in_manager_add_from_rc"
	.size	.L__func__.gimp_plug_in_manager_add_from_rc, 33

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"plug_in_def != NULL"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"plug_in_def->prog != NULL"
	.size	.L.str.16, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"plug_ins_def_add_from_rc: filename not absolute (skipping)"
	.size	.L.str.17, 59

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"<Load>"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"<Save>"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"pluginrc lists '%s', but it wasn't found\n"
	.size	.L.str.20, 42

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Querying new Plug-ins"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Querying plug-in: '%s'\n"
	.size	.L.str.22, 24

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Initializing Plug-ins"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Initializing plug-in: '%s'\n"
	.size	.L.str.24, 28

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Starting Extensions"
	.size	.L.str.25, 20

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Starting extension: '%s'\n"
	.size	.L.str.26, 26

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"UTF-8"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-register-save-handler"
	.size	.L.str.28, 27

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-register-magic-load-handler"
	.size	.L.str.29, 33

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-xcf"
	.size	.L.str.30, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
