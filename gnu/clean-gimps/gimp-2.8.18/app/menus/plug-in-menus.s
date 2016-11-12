	.text
	.file	"plug-in-menus.bc"
	.globl	plug_in_menus_setup
	.align	16, 0x90
	.type	plug_in_menus_setup,@function
plug_in_menus_setup:                    # @plug_in_menus_setup
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_ui_manager_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_menus_setup, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_46
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_menus_setup, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_46
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	376(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_new_merge_id
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB0_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	32(%rcx), %rcx
	cmpl	332(%rcx), %eax
	jge	.LBB0_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB0_18 Depth=1
	movabsq	$.L.str.3, %rdi
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.4, %rdi
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$32, %r9d
	xorl	%ecx, %ecx
	movl	-44(%rbp), %esi
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	-80(%rbp), %r8
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gtk_ui_manager_add_ui
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB0_18 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_18
.LBB0_21:                               # %for.end
	movabsq	$strcmp, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$g_free, %rdx
	movabsq	$plug_in_menu_entry_free, %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	g_tree_new_full
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB0_22:                               # %for.cond.30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB0_45
# BB#23:                                # %for.body.32
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	$0, 136(%rax)
	jne	.LBB0_25
# BB#24:                                # %if.then.35
                                        #   in Loop: Header=BB0_22 Depth=1
	jmp	.LBB0_41
.LBB0_25:                               # %if.end.36
                                        #   in Loop: Header=BB0_22 Depth=1
	movabsq	$.L.str.5, %rsi
	movabsq	$plug_in_menus_menu_path_added, %rax
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	-96(%rbp), %rcx
	cmpq	$0, 160(%rcx)
	movq	%rax, -192(%rbp)        # 8-byte Spill
	je	.LBB0_40
# BB#26:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$0, 220(%rax)
	jne	.LBB0_40
# BB#27:                                # %if.then.41
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	-96(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB0_28:                               # %for.cond.44
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -104(%rbp)
	je	.LBB0_39
# BB#29:                                # %for.body.46
                                        #   in Loop: Header=BB0_28 Depth=2
	movq	-104(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB0_34
# BB#30:                                # %if.then.50
                                        #   in Loop: Header=BB0_28 Depth=2
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-96(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_progname
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -120(%rbp)
	movq	-24(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gimp_plug_in_manager_get_locale_domain
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB0_32
# BB#31:                                # %if.then.60
                                        #   in Loop: Header=BB0_28 Depth=2
	movq	-128(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	(%rax), %rsi
	callq	dgettext
	movq	-128(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	dgettext
	movabsq	$.L.str.6, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -136(%rbp)
	movq	-32(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	plug_in_menus_tree_insert
	movq	-136(%rbp), %rdi
	callq	g_free
	jmp	.LBB0_33
.LBB0_32:                               # %if.else.67
                                        #   in Loop: Header=BB0_28 Depth=2
	movq	-32(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	dgettext
	movq	-112(%rbp), %rdx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	plug_in_menus_tree_insert
.LBB0_33:                               # %if.end.70
                                        #   in Loop: Header=BB0_28 Depth=2
	jmp	.LBB0_34
.LBB0_34:                               # %if.end.71
                                        #   in Loop: Header=BB0_28 Depth=2
	jmp	.LBB0_35
.LBB0_35:                               # %for.inc.72
                                        #   in Loop: Header=BB0_28 Depth=2
	cmpq	$0, -104(%rbp)
	je	.LBB0_37
# BB#36:                                # %cond.true
                                        #   in Loop: Header=BB0_28 Depth=2
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB0_38
.LBB0_37:                               # %cond.false
                                        #   in Loop: Header=BB0_28 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB0_38
.LBB0_38:                               # %cond.end
                                        #   in Loop: Header=BB0_28 Depth=2
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	jmp	.LBB0_28
.LBB0_39:                               # %for.end.74
                                        #   in Loop: Header=BB0_22 Depth=1
	jmp	.LBB0_40
.LBB0_40:                               # %if.end.75
                                        #   in Loop: Header=BB0_22 Depth=1
	jmp	.LBB0_41
.LBB0_41:                               # %for.inc.76
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_43
# BB#42:                                # %cond.true.78
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB0_44
.LBB0_43:                               # %cond.false.80
                                        #   in Loop: Header=BB0_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB0_44
.LBB0_44:                               # %cond.end.81
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_22
.LBB0_45:                               # %for.end.83
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$plug_in_menus_tree_traverse, %rax
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_tree_foreach
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-32(%rbp), %rdi
	callq	g_tree_destroy
	movabsq	$.L.str.8, %rsi
	movabsq	$plug_in_menus_register_procedure, %rax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	520(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.9, %rsi
	movabsq	$plug_in_menus_unregister_procedure, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB0_46:                               # %return
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end0:
	.size	plug_in_menus_setup, .Lfunc_end0-plug_in_menus_setup
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_menu_entry_free,@function
plug_in_menu_entry_free:                # @plug_in_menu_entry_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	plug_in_menu_entry_free, .Lfunc_end1-plug_in_menu_entry_free
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_menus_menu_path_added,@function
plug_in_menus_menu_path_added:          # @plug_in_menus_menu_path_added
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movl	$32, %edi
	movabsq	$.L__func__.plug_in_menus_menu_path_added, %rsi
	movl	$284, %edx              # imm = 0x11C
	movabsq	$.L.str.13, %rcx
	movq	-16(%rbp), %r9
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB2_3:                                # %if.end
	jmp	.LBB2_4
.LBB2_4:                                # %do.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB2_47
# BB#5:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.14, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_7
# BB#6:                                 # %if.then.7
	movabsq	$.L.str.15, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	movabsq	$.L.str.16, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	jmp	.LBB2_46
.LBB2_7:                                # %if.else
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.17, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_9
# BB#8:                                 # %if.then.11
	movabsq	$.L.str.18, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	jmp	.LBB2_45
.LBB2_9:                                # %if.else.12
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.19, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_11
# BB#10:                                # %if.then.16
	movabsq	$.L.str.20, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	jmp	.LBB2_44
.LBB2_11:                               # %if.else.17
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.21, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_13
# BB#12:                                # %if.then.21
	movabsq	$.L.str.22, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	jmp	.LBB2_43
.LBB2_13:                               # %if.else.22
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.23, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_15
# BB#14:                                # %if.then.26
	movabsq	$.L.str.24, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	jmp	.LBB2_42
.LBB2_15:                               # %if.else.27
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.25, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_17
# BB#16:                                # %if.then.31
	movabsq	$.L.str.26, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	jmp	.LBB2_41
.LBB2_17:                               # %if.else.32
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.27, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_19
# BB#18:                                # %if.then.36
	movabsq	$.L.str.28, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	jmp	.LBB2_40
.LBB2_19:                               # %if.else.37
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.29, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_21
# BB#20:                                # %if.then.41
	movabsq	$.L.str.30, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	jmp	.LBB2_39
.LBB2_21:                               # %if.else.42
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.31, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_23
# BB#22:                                # %if.then.46
	movabsq	$.L.str.32, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	jmp	.LBB2_38
.LBB2_23:                               # %if.else.47
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.33, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_25
# BB#24:                                # %if.then.51
	movabsq	$.L.str.34, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	jmp	.LBB2_37
.LBB2_25:                               # %if.else.52
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.35, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_27
# BB#26:                                # %if.then.56
	movabsq	$.L.str.36, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	jmp	.LBB2_36
.LBB2_27:                               # %if.else.57
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.37, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_29
# BB#28:                                # %if.then.61
	movabsq	$.L.str.38, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	jmp	.LBB2_35
.LBB2_29:                               # %if.else.62
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.39, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_31
# BB#30:                                # %if.then.66
	movabsq	$.L.str.40, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
	jmp	.LBB2_34
.LBB2_31:                               # %if.else.67
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.41, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_33
# BB#32:                                # %if.then.71
	movabsq	$.L.str.42, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	plug_in_menus_add_proc
.LBB2_33:                               # %if.end.72
	jmp	.LBB2_34
.LBB2_34:                               # %if.end.73
	jmp	.LBB2_35
.LBB2_35:                               # %if.end.74
	jmp	.LBB2_36
.LBB2_36:                               # %if.end.75
	jmp	.LBB2_37
.LBB2_37:                               # %if.end.76
	jmp	.LBB2_38
.LBB2_38:                               # %if.end.77
	jmp	.LBB2_39
.LBB2_39:                               # %if.end.78
	jmp	.LBB2_40
.LBB2_40:                               # %if.end.79
	jmp	.LBB2_41
.LBB2_41:                               # %if.end.80
	jmp	.LBB2_42
.LBB2_42:                               # %if.end.81
	jmp	.LBB2_43
.LBB2_43:                               # %if.end.82
	jmp	.LBB2_44
.LBB2_44:                               # %if.end.83
	jmp	.LBB2_45
.LBB2_45:                               # %if.end.84
	jmp	.LBB2_46
.LBB2_46:                               # %if.end.85
	jmp	.LBB2_47
.LBB2_47:                               # %if.end.86
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	plug_in_menus_menu_path_added, .Lfunc_end2-plug_in_menus_menu_path_added
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_menus_tree_insert,@function
plug_in_menus_tree_insert:              # @plug_in_menus_tree_insert
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_strip_uline
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	$-1, %rsi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_utf8_collate_key
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_tree_insert
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	plug_in_menus_tree_insert, .Lfunc_end3-plug_in_menus_tree_insert
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_menus_tree_traverse,@function
plug_in_menus_tree_traverse:            # @plug_in_menus_tree_traverse
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	callq	plug_in_menus_add_proc
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	plug_in_menus_tree_traverse, .Lfunc_end4-plug_in_menus_tree_traverse
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_menus_register_procedure,@function
plug_in_menus_register_procedure:       # @plug_in_menus_register_procedure
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_7
.LBB5_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_5
# BB#4:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_6
.LBB5_5:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_6:                                # %if.end
	jmp	.LBB5_7
.LBB5_7:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_24
# BB#8:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movabsq	$plug_in_menus_menu_path_added, %rdi
	xorl	%r8d, %r8d
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	-56(%rbp), %rcx
	cmpq	$0, 152(%rcx)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jne	.LBB5_10
# BB#9:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB5_23
.LBB5_10:                               # %land.lhs.true.15
	movq	-56(%rbp), %rax
	cmpl	$0, 220(%rax)
	jne	.LBB5_23
# BB#11:                                # %if.then.17
	jmp	.LBB5_12
.LBB5_12:                               # %do.body
	movl	gimp_log_flags, %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB5_14
# BB#13:                                # %if.then.20
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movl	$32, %edi
	movabsq	$.L__func__.plug_in_menus_register_procedure, %rsi
	movl	$225, %edx
	movabsq	$.L.str.10, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB5_14:                               # %if.end.22
	jmp	.LBB5_15
.LBB5_15:                               # %do.end
	movq	-56(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB5_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB5_22
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rdx
	callq	plug_in_menus_menu_path_added
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB5_16 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB5_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB5_21
.LBB5_20:                               # %cond.false
                                        #   in Loop: Header=BB5_16 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB5_21
.LBB5_21:                               # %cond.end
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB5_16
.LBB5_22:                               # %for.end
	jmp	.LBB5_23
.LBB5_23:                               # %if.end.26
	jmp	.LBB5_24
.LBB5_24:                               # %if.end.27
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	plug_in_menus_register_procedure, .Lfunc_end5-plug_in_menus_register_procedure
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_menus_unregister_procedure,@function
plug_in_menus_unregister_procedure:     # @plug_in_menus_unregister_procedure
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_7
.LBB6_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_5
# BB#4:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_6:                                # %if.end
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_28
# BB#8:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$plug_in_menus_menu_path_added, %rdi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-56(%rbp), %rdi
	cmpq	$0, 152(%rdi)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jne	.LBB6_10
# BB#9:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB6_27
.LBB6_10:                               # %land.lhs.true.15
	movq	-56(%rbp), %rax
	cmpl	$0, 220(%rax)
	jne	.LBB6_27
# BB#11:                                # %if.then.17
	jmp	.LBB6_12
.LBB6_12:                               # %do.body
	movl	gimp_log_flags, %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB6_14
# BB#13:                                # %if.then.20
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movl	$32, %edi
	movabsq	$.L__func__.plug_in_menus_unregister_procedure, %rsi
	movl	$252, %edx
	movabsq	$.L.str.11, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB6_14:                               # %if.end.22
	jmp	.LBB6_15
.LBB6_15:                               # %do.end
	movq	-56(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB6_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB6_26
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB6_16 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB6_21
# BB#18:                                # %if.then.27
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.12, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_free
	cmpl	$0, -76(%rbp)
	je	.LBB6_20
# BB#19:                                # %if.then.35
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_ui_manager_remove_ui
.LBB6_20:                               # %if.end.38
	jmp	.LBB6_26
.LBB6_21:                               # %if.end.39
                                        #   in Loop: Header=BB6_16 Depth=1
	jmp	.LBB6_22
.LBB6_22:                               # %for.inc
                                        #   in Loop: Header=BB6_16 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB6_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB6_16 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB6_25
.LBB6_24:                               # %cond.false
                                        #   in Loop: Header=BB6_16 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB6_25
.LBB6_25:                               # %cond.end
                                        #   in Loop: Header=BB6_16 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB6_16
.LBB6_26:                               # %for.end
	jmp	.LBB6_27
.LBB6_27:                               # %if.end.41
	jmp	.LBB6_28
.LBB6_28:                               # %if.end.42
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	plug_in_menus_unregister_procedure, .Lfunc_end6-plug_in_menus_unregister_procedure
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_menus_add_proc,@function
plug_in_menus_add_proc:                 # @plug_in_menus_add_proc
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_ui_manager_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_menus_add_proc, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_46
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_menus_add_proc, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_46
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	jmp	.LBB7_18
.LBB7_18:                               # %do.body.17
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB7_20
# BB#19:                                # %if.then.26
	movl	$0, -116(%rbp)
	jmp	.LBB7_25
.LBB7_20:                               # %if.else.27
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_23
# BB#21:                                # %land.lhs.true.30
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB7_23
# BB#22:                                # %if.then.34
	movl	$1, -116(%rbp)
	jmp	.LBB7_24
.LBB7_23:                               # %if.else.35
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB7_24:                               # %if.end.37
	jmp	.LBB7_25
.LBB7_25:                               # %if.end.38
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB7_27
# BB#26:                                # %if.then.41
	jmp	.LBB7_28
.LBB7_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_menus_add_proc, %rsi
	movabsq	$.L.str.43, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_46
.LBB7_28:                               # %if.end.43
	jmp	.LBB7_29
.LBB7_29:                               # %do.end.44
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 152(%rax)
	jne	.LBB7_35
# BB#30:                                # %if.then.47
	cmpq	$0, -40(%rbp)
	jne	.LBB7_32
# BB#31:                                # %if.then.50
	jmp	.LBB7_46
.LBB7_32:                               # %if.end.51
	movl	$47, %esi
	movq	-40(%rbp), %rdi
	callq	strrchr
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB7_34
# BB#33:                                # %if.then.54
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB7_46
.LBB7_34:                               # %if.end.55
	movq	-128(%rbp), %rax
	movb	$0, (%rax)
.LBB7_35:                               # %if.end.56
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.12, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.LBB7_37
# BB#36:                                # %if.then.62
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_new_merge_id
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movl	-68(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB7_37:                               # %if.end.68
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.LBB7_39
# BB#38:                                # %if.then.73
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_new_merge_id
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	%eax, -72(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rsi
	movl	-72(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB7_39:                               # %if.end.79
	movq	-40(%rbp), %rdi
	callq	gimp_strip_uline
	xorl	%r8d, %r8d
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-72(%rbp), %edx
	movq	-56(%rbp), %rcx
	callq	plug_in_menus_build_path
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free
	cmpq	$0, -64(%rbp)
	jne	.LBB7_41
# BB#40:                                # %if.then.83
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB7_46
.LBB7_41:                               # %if.end.84
	jmp	.LBB7_42
.LBB7_42:                               # %do.body.85
	movl	gimp_log_flags, %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB7_44
# BB#43:                                # %if.then.87
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movl	$32, %edi
	movabsq	$.L__func__.plug_in_menus_add_proc, %rsi
	movl	$435, %edx              # imm = 0x1B3
	movabsq	$.L.str.45, %rcx
	movq	-64(%rbp), %r9
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB7_44:                               # %if.end.89
	jmp	.LBB7_45
.LBB7_45:                               # %do.end.90
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %esi
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movl	$32, %r9d
	xorl	%esi, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %ecx        # 4-byte Reload
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movl	$0, (%rsp)
	callq	gtk_ui_manager_add_ui
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB7_46:                               # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	plug_in_menus_add_proc, .Lfunc_end7-plug_in_menus_add_proc
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_menus_build_path,@function
plug_in_menus_build_path:               # @plug_in_menus_build_path
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
	subq	$192, %rsp
	movl	$47, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-40(%rbp), %rdi
	movl	%eax, %esi
	callq	strchr
	cmpq	$0, %rax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -56(%rbp)
	jmp	.LBB8_16
.LBB8_2:                                # %if.end
	movl	$47, %esi
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	strchr
	movabsq	$.L.str.46, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_widget
	cmpq	$0, %rax
	jne	.LBB8_15
# BB#3:                                 # %if.then.8
	movq	-40(%rbp), %rdi
	callq	g_strdup
	movl	$47, %esi
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	strrchr
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -80(%rbp)
	movb	$0, (%rax)
	cmpq	$0, -80(%rbp)
	je	.LBB8_5
# BB#4:                                 # %if.then.12
	movl	$1, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-64(%rbp), %rcx
	callq	plug_in_menus_build_path
	movq	%rax, -72(%rbp)
.LBB8_5:                                # %if.end.14
	cmpq	$0, -72(%rbp)
	je	.LBB8_13
# BB#6:                                 # %if.then.16
	movq	-56(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.47, %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_widget
	cmpq	$0, %rax
	jne	.LBB8_12
# BB#7:                                 # %if.then.22
	jmp	.LBB8_8
.LBB8_8:                                # %do.body
	movl	gimp_log_flags, %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB8_10
# BB#9:                                 # %if.then.24
	movl	$32, %edi
	movabsq	$.L__func__.plug_in_menus_build_path, %rsi
	movl	$520, %edx              # imm = 0x208
	movabsq	$.L.str.48, %rcx
	movq	-80(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	-40(%rbp), %rax
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB8_10:                               # %if.end.25
	jmp	.LBB8_11
.LBB8_11:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %r9d
	xorl	%ecx, %ecx
	movl	-28(%rbp), %esi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %r8
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gtk_ui_manager_add_ui
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$8, %r9d
	xorl	%r10d, %r10d
	movl	-28(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movl	%r10d, -148(%rbp)       # 4-byte Spill
	callq	gtk_ui_manager_add_ui
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$128, %r9d
	xorl	%r10d, %r10d
	movl	-28(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movl	%r10d, -164(%rbp)       # 4-byte Spill
	callq	gtk_ui_manager_add_ui
.LBB8_12:                               # %if.end.32
	movq	-72(%rbp), %rdi
	callq	g_free
	jmp	.LBB8_14
.LBB8_13:                               # %if.else
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	$0, -56(%rbp)
.LBB8_14:                               # %if.end.33
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB8_15:                               # %if.end.34
	jmp	.LBB8_16
.LBB8_16:                               # %make_placeholder
	cmpq	$0, -56(%rbp)
	je	.LBB8_21
# BB#17:                                # %land.lhs.true
	cmpl	$0, -44(%rbp)
	je	.LBB8_21
# BB#18:                                # %if.then.37
	movabsq	$.L.str.47, %rdi
	movabsq	$.L.str.49, %rdx
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_widget
	cmpq	$0, %rax
	je	.LBB8_20
# BB#19:                                # %if.then.43
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB8_22
.LBB8_20:                               # %if.end.44
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB8_21:                               # %if.end.45
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_22:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	plug_in_menus_build_path, .Lfunc_end8-plug_in_menus_build_path
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Menus"
	.size	.L.str, 11

	.type	.L__func__.plug_in_menus_setup,@object # @__func__.plug_in_menus_setup
.L__func__.plug_in_menus_setup:
	.asciz	"plug_in_menus_setup"
	.size	.L__func__.plug_in_menus_setup, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_UI_MANAGER (manager)"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ui_path != NULL"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"plug-in-recent-%02d"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s/Filters/Recently Used/Plug-Ins"
	.size	.L.str.4, 34

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"menu-path-added"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ui-path"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"register-procedure"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"unregister-procedure"
	.size	.L.str.9, 21

	.type	.L__func__.plug_in_menus_register_procedure,@object # @__func__.plug_in_menus_register_procedure
.L__func__.plug_in_menus_register_procedure:
	.asciz	"plug_in_menus_register_procedure"
	.size	.L__func__.plug_in_menus_register_procedure, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"register procedure: %s"
	.size	.L.str.10, 23

	.type	.L__func__.plug_in_menus_unregister_procedure,@object # @__func__.plug_in_menus_unregister_procedure
.L__func__.plug_in_menus_unregister_procedure:
	.asciz	"plug_in_menus_unregister_procedure"
	.size	.L__func__.plug_in_menus_unregister_procedure, 35

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"unregister procedure: %s"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s-merge-id"
	.size	.L.str.12, 12

	.type	.L__func__.plug_in_menus_menu_path_added,@object # @__func__.plug_in_menus_menu_path_added
.L__func__.plug_in_menus_menu_path_added:
	.asciz	"plug_in_menus_menu_path_added"
	.size	.L__func__.plug_in_menus_menu_path_added, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"menu path added: %s (%s)"
	.size	.L.str.13, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"<Image>"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"/image-menubar"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"/dummy-menubar/image-popup"
	.size	.L.str.16, 27

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<Toolbox>"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"/toolbox-menubar"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"<Layers>"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"/layers-popup"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"<Channels>"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"/channels-popup"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"<Vectors>"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/vectors-popup"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"<Colormap>"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/colormap-popup"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"<Brushes>"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"/brushes-popup"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"<Dynamics>"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"/dynamics-popup"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"<Gradients>"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"/gradients-popup"
	.size	.L.str.32, 17

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"<Palettes>"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"/palettes-popup"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"<Patterns>"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"/patterns-popup"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"<ToolPresets>"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"/tool-presets-popup"
	.size	.L.str.38, 20

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"<Fonts>"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"/fonts-popup"
	.size	.L.str.40, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"<Buffers>"
	.size	.L.str.41, 10

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"/buffers-popup"
	.size	.L.str.42, 15

	.type	.L__func__.plug_in_menus_add_proc,@object # @__func__.plug_in_menus_add_proc
.L__func__.plug_in_menus_add_proc:
	.asciz	"plug_in_menus_add_proc"
	.size	.L__func__.plug_in_menus_add_proc, 23

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"GIMP_IS_PLUG_IN_PROCEDURE (proc)"
	.size	.L.str.43, 33

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"plug-in-menu-merge-id"
	.size	.L.str.44, 22

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"adding menu item for '%s' (@ %s)"
	.size	.L.str.45, 33

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%s%s"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%s/%s"
	.size	.L.str.47, 6

	.type	.L__func__.plug_in_menus_build_path,@object # @__func__.plug_in_menus_build_path
.L__func__.plug_in_menus_build_path:
	.asciz	"plug_in_menus_build_path"
	.size	.L__func__.plug_in_menus_build_path, 25

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"adding menu '%s' at path '%s' for action '%s'"
	.size	.L.str.48, 46

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Menus"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Separator"
	.size	.L.str.50, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
