	.text
	.file	"gimpsinglewindowstrategy.bc"
	.globl	gimp_single_window_strategy_get_type
	.align	16, 0x90
	.type	gimp_single_window_strategy_get_type,@function
gimp_single_window_strategy_get_type:   # @gimp_single_window_strategy_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_single_window_strategy_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_single_window_strategy_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$160, %edx
	movabsq	$gimp_single_window_strategy_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_single_window_strategy_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movabsq	$gimp_single_window_strategy_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_single_window_strategy_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_single_window_strategy_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_single_window_strategy_get_type, .Lfunc_end0-gimp_single_window_strategy_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_single_window_strategy_class_intern_init,@function
gimp_single_window_strategy_class_intern_init: # @gimp_single_window_strategy_class_intern_init
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
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_single_window_strategy_parent_class
	cmpl	$0, GimpSingleWindowStrategy_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSingleWindowStrategy_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_single_window_strategy_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_single_window_strategy_class_intern_init, .Lfunc_end1-gimp_single_window_strategy_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_single_window_strategy_init,@function
gimp_single_window_strategy_init:       # @gimp_single_window_strategy_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_single_window_strategy_init, .Lfunc_end2-gimp_single_window_strategy_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_single_window_strategy_window_strategy_iface_init,@function
gimp_single_window_strategy_window_strategy_iface_init: # @gimp_single_window_strategy_window_strategy_iface_init
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
	movabsq	$gimp_single_window_strategy_show_dockable_dialog, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_single_window_strategy_window_strategy_iface_init, .Lfunc_end3-gimp_single_window_strategy_window_strategy_iface_init
	.cfi_endproc

	.globl	gimp_single_window_strategy_get_singleton
	.align	16, 0x90
	.type	gimp_single_window_strategy_get_singleton,@function
gimp_single_window_strategy_get_singleton: # @gimp_single_window_strategy_get_singleton
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
	cmpq	$0, gimp_single_window_strategy_get_singleton.singleton
	jne	.LBB4_2
# BB#1:                                 # %if.then
	callq	gimp_single_window_strategy_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, gimp_single_window_strategy_get_singleton.singleton
.LBB4_2:                                # %if.end
	movq	gimp_single_window_strategy_get_singleton.singleton, %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_single_window_strategy_get_singleton, .Lfunc_end4-gimp_single_window_strategy_get_singleton
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_single_window_strategy_class_init,@function
gimp_single_window_strategy_class_init: # @gimp_single_window_strategy_class_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_single_window_strategy_class_init, .Lfunc_end5-gimp_single_window_strategy_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_single_window_strategy_show_dockable_dialog,@function
gimp_single_window_strategy_show_dockable_dialog: # @gimp_single_window_strategy_show_dockable_dialog
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_get_image_windows
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -56(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_single_window_strategy_show_dockable_dialog, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_16
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rsi
	movl	$.L.str.3, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_9
# BB#6:                                 # %if.then.5
	movq	-72(%rbp), %rdi
	callq	gimp_image_window_has_toolbox
	cmpl	$0, %eax
	jne	.LBB6_8
# BB#7:                                 # %if.then.7
	movq	-72(%rbp), %rdi
	callq	gimp_image_window_get_ui_manager
	movabsq	$.L.str.3, %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	gimp_dialog_factory_dialog_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	callq	gimp_image_window_get_left_docks
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dock_columns_add_dock
.LBB6_8:                                # %if.end.13
	jmp	.LBB6_15
.LBB6_9:                                # %if.else.14
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_dialog_factory_find_widget
	cmpq	$0, %rax
	je	.LBB6_11
# BB#10:                                # %if.then.17
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_dialog_factory_dialog_raise
	movq	%rax, -8(%rbp)
	jmp	.LBB6_16
.LBB6_11:                               # %if.else.19
	movq	-72(%rbp), %rdi
	callq	gimp_image_window_get_default_dockbook
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB6_13
# BB#12:                                # %if.then.22
	movq	-72(%rbp), %rdi
	callq	gimp_image_window_get_right_docks
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	-96(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_dock_columns_prepare_dockbook
.LBB6_13:                               # %if.end.24
	movq	-96(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dockbook_add_from_dialog_factory
	movq	%rax, -64(%rbp)
# BB#14:                                # %if.end.28
	jmp	.LBB6_15
.LBB6_15:                               # %if.end.29
	movq	-56(%rbp), %rdi
	callq	g_list_free
	movq	-64(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB6_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_single_window_strategy_show_dockable_dialog, .Lfunc_end6-gimp_single_window_strategy_show_dockable_dialog
	.cfi_endproc

	.type	gimp_single_window_strategy_get_type.g_define_type_id__volatile,@object # @gimp_single_window_strategy_get_type.g_define_type_id__volatile
	.local	gimp_single_window_strategy_get_type.g_define_type_id__volatile
	.comm	gimp_single_window_strategy_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSingleWindowStrategy"
	.size	.L.str, 25

	.type	gimp_single_window_strategy_get_type.g_implement_interface_info,@object # @gimp_single_window_strategy_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_single_window_strategy_get_type.g_implement_interface_info:
	.quad	gimp_single_window_strategy_window_strategy_iface_init
	.quad	0
	.quad	0
	.size	gimp_single_window_strategy_get_type.g_implement_interface_info, 24

	.type	gimp_single_window_strategy_get_singleton.singleton,@object # @gimp_single_window_strategy_get_singleton.singleton
	.local	gimp_single_window_strategy_get_singleton.singleton
	.comm	gimp_single_window_strategy_get_singleton.singleton,8,8
	.type	gimp_single_window_strategy_parent_class,@object # @gimp_single_window_strategy_parent_class
	.local	gimp_single_window_strategy_parent_class
	.comm	gimp_single_window_strategy_parent_class,8,8
	.type	GimpSingleWindowStrategy_private_offset,@object # @GimpSingleWindowStrategy_private_offset
	.local	GimpSingleWindowStrategy_private_offset
	.comm	GimpSingleWindowStrategy_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_single_window_strategy_show_dockable_dialog,@object # @__func__.gimp_single_window_strategy_show_dockable_dialog
.L__func__.gimp_single_window_strategy_show_dockable_dialog:
	.asciz	"gimp_single_window_strategy_show_dockable_dialog"
	.size	.L__func__.gimp_single_window_strategy_show_dockable_dialog, 49

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"windows != NULL"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-toolbox"
	.size	.L.str.3, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
