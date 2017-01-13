	.text
	.file	"file-menu.bc"
	.globl	file_menu_setup
	.align	16, 0x90
	.type	file_menu_setup,@function
file_menu_setup:                        # @file_menu_setup
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_ui_manager_get_type
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
	movabsq	$.L__func__.file_menu_setup, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_23
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
	movabsq	$.L__func__.file_menu_setup, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_23
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	616(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_ui_manager_new_merge_id
	movl	%eax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB0_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_23
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB0_18 Depth=1
	movabsq	$.L.str.3, %rdi
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.4, %rdi
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movl	$32, %r9d
	xorl	%ecx, %ecx
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %esi
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	-80(%rbp), %r8
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gtk_ui_manager_add_ui
	movabsq	$.L.str.5, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB0_21
# BB#20:                                # %if.then.32
                                        #   in Loop: Header=BB0_18 Depth=1
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rdx
	callq	gimp_ui_manager_find_action
	movabsq	$.L.str.7, %rsi
	movabsq	$file_menu_open_recent_query_tooltip, %rdx
	xorl	%r8d, %r8d
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	-104(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB0_21:                               # %if.end.36
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB0_18 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_18
.LBB0_23:                               # %for.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	file_menu_setup, .Lfunc_end0-file_menu_setup
	.cfi_endproc

	.align	16, 0x90
	.type	file_menu_open_recent_query_tooltip,@function
file_menu_open_recent_query_tooltip:    # @file_menu_open_recent_query_tooltip
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_tooltip_text
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_tooltip_set_text
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	$128, %ecx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_viewable_get_pixbuf
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tooltip_set_icon
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	file_menu_open_recent_query_tooltip, .Lfunc_end1-file_menu_open_recent_query_tooltip
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Menus"
	.size	.L.str, 11

	.type	.L__func__.file_menu_setup,@object # @__func__.file_menu_setup
.L__func__.file_menu_setup:
	.asciz	"file_menu_setup"
	.size	.L__func__.file_menu_setup, 16

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
	.asciz	"file-open-recent-%02d"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s/File/Open Recent/Files"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"file"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"query-tooltip"
	.size	.L.str.7, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
