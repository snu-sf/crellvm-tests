	.text
	.file	"window-menu.bc"
	.globl	window_menu_setup
	.align	16, 0x90
	.type	window_menu_setup,@function
window_menu_setup:                      # @window_menu_setup
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	gdk_display_manager_get
	movq	%rax, -32(%rbp)
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
# BB#5:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.9
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.window_menu_setup, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_25
.LBB0_11:                               # %if.end.11
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.window_menu_setup, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_25
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_strdup
	movabsq	$.L.str.3, %rsi
	movabsq	$g_free, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_strdup
	movabsq	$.L.str.4, %rsi
	movabsq	$g_free, %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	movq	-32(%rbp), %rdi
	callq	gdk_display_manager_list_displays
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_slist_reverse
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_24
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	callq	window_menu_display_opened
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB0_18 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_23
.LBB0_22:                               # %cond.false
                                        #   in Loop: Header=BB0_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_23
.LBB0_23:                               # %cond.end
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB0_18
.LBB0_24:                               # %for.end
	movq	-40(%rbp), %rdi
	callq	g_slist_free
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movabsq	$window_menu_display_opened, %rcx
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB0_25:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	window_menu_setup, .Lfunc_end0-window_menu_setup
	.cfi_endproc

	.align	16, 0x90
	.type	window_menu_display_opened,@function
window_menu_display_opened:             # @window_menu_display_opened
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$.L.str.6, %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_display_get_name
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rax
	movq	%rax, -56(%rbp)
.LBB1_2:                                # %if.end
	movabsq	$.L.str.8, %rdi
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_ui_manager_new_merge_id
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	gdk_display_get_n_screens
	movl	%eax, -80(%rbp)
	movl	$0, -84(%rbp)
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB1_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gdk_display_get_screen
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gdk_screen_make_display_name
	movabsq	$.L.str.9, %rdi
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_free
	movl	$32, %r9d
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdi
	movl	-76(%rbp), %esi
	movq	-64(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	-112(%rbp), %r8
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gtk_ui_manager_add_ui
	movq	-112(%rbp), %rdi
	callq	g_free
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                # %for.end
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movabsq	$window_menu_display_closed, %rcx
	xorl	%r8d, %r8d
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	%rax, -144(%rbp)        # 8-byte Spill
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	window_menu_display_opened, .Lfunc_end1-window_menu_display_opened
	.cfi_endproc

	.align	16, 0x90
	.type	window_menu_display_closed,@function
window_menu_display_closed:             # @window_menu_display_closed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_display_get_name
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rax
	movq	%rax, -32(%rbp)
.LBB2_2:                                # %if.end
	movabsq	$.L.str.8, %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	cmpl	$0, -44(%rbp)
	je	.LBB2_4
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_ui_manager_remove_ui
.LBB2_4:                                # %if.end.8
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	window_menu_display_closed, .Lfunc_end2-window_menu_display_closed
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Menus"
	.size	.L.str, 11

	.type	.L__func__.window_menu_setup,@object # @__func__.window_menu_setup
.L__func__.window_menu_setup:
	.asciz	"window_menu_setup"
	.size	.L__func__.window_menu_setup, 18

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
	.asciz	"move-to-screen-group-name"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"move-to-screen-ui-path"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"display-opened"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s/Move to Screen"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"eek"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s-display-merge-id"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s-move-to-screen-%s"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"closed"
	.size	.L.str.10, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
