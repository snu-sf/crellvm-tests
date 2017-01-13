	.text
	.file	"gimpmultiwindowstrategy.bc"
	.globl	gimp_multi_window_strategy_get_type
	.align	16, 0x90
	.type	gimp_multi_window_strategy_get_type,@function
gimp_multi_window_strategy_get_type:    # @gimp_multi_window_strategy_get_type
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
	movq	gimp_multi_window_strategy_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_multi_window_strategy_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_multi_window_strategy_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_multi_window_strategy_init, %rcx
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
	movabsq	$gimp_multi_window_strategy_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_multi_window_strategy_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_multi_window_strategy_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_multi_window_strategy_get_type, .Lfunc_end0-gimp_multi_window_strategy_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_multi_window_strategy_class_intern_init,@function
gimp_multi_window_strategy_class_intern_init: # @gimp_multi_window_strategy_class_intern_init
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
	movq	%rax, gimp_multi_window_strategy_parent_class
	cmpl	$0, GimpMultiWindowStrategy_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpMultiWindowStrategy_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_multi_window_strategy_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_multi_window_strategy_class_intern_init, .Lfunc_end1-gimp_multi_window_strategy_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_multi_window_strategy_init,@function
gimp_multi_window_strategy_init:        # @gimp_multi_window_strategy_init
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
	.size	gimp_multi_window_strategy_init, .Lfunc_end2-gimp_multi_window_strategy_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_multi_window_strategy_window_strategy_iface_init,@function
gimp_multi_window_strategy_window_strategy_iface_init: # @gimp_multi_window_strategy_window_strategy_iface_init
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
	movabsq	$gimp_multi_window_strategy_show_dockable_dialog, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_multi_window_strategy_window_strategy_iface_init, .Lfunc_end3-gimp_multi_window_strategy_window_strategy_iface_init
	.cfi_endproc

	.globl	gimp_multi_window_strategy_get_singleton
	.align	16, 0x90
	.type	gimp_multi_window_strategy_get_singleton,@function
gimp_multi_window_strategy_get_singleton: # @gimp_multi_window_strategy_get_singleton
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
	cmpq	$0, gimp_multi_window_strategy_get_singleton.singleton
	jne	.LBB4_2
# BB#1:                                 # %if.then
	callq	gimp_multi_window_strategy_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, gimp_multi_window_strategy_get_singleton.singleton
.LBB4_2:                                # %if.end
	movq	gimp_multi_window_strategy_get_singleton.singleton, %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_multi_window_strategy_get_singleton, .Lfunc_end4-gimp_multi_window_strategy_get_singleton
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_multi_window_strategy_class_init,@function
gimp_multi_window_strategy_class_init:  # @gimp_multi_window_strategy_class_init
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
	.size	gimp_multi_window_strategy_class_init, .Lfunc_end5-gimp_multi_window_strategy_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_multi_window_strategy_show_dockable_dialog,@function
gimp_multi_window_strategy_show_dockable_dialog: # @gimp_multi_window_strategy_show_dockable_dialog
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
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, %ecx
	callq	gimp_dialog_factory_dialog_raise
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_multi_window_strategy_show_dockable_dialog, .Lfunc_end6-gimp_multi_window_strategy_show_dockable_dialog
	.cfi_endproc

	.type	gimp_multi_window_strategy_get_type.g_define_type_id__volatile,@object # @gimp_multi_window_strategy_get_type.g_define_type_id__volatile
	.local	gimp_multi_window_strategy_get_type.g_define_type_id__volatile
	.comm	gimp_multi_window_strategy_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpMultiWindowStrategy"
	.size	.L.str, 24

	.type	gimp_multi_window_strategy_get_type.g_implement_interface_info,@object # @gimp_multi_window_strategy_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_multi_window_strategy_get_type.g_implement_interface_info:
	.quad	gimp_multi_window_strategy_window_strategy_iface_init
	.quad	0
	.quad	0
	.size	gimp_multi_window_strategy_get_type.g_implement_interface_info, 24

	.type	gimp_multi_window_strategy_get_singleton.singleton,@object # @gimp_multi_window_strategy_get_singleton.singleton
	.local	gimp_multi_window_strategy_get_singleton.singleton
	.comm	gimp_multi_window_strategy_get_singleton.singleton,8,8
	.type	gimp_multi_window_strategy_parent_class,@object # @gimp_multi_window_strategy_parent_class
	.local	gimp_multi_window_strategy_parent_class
	.comm	gimp_multi_window_strategy_parent_class,8,8
	.type	GimpMultiWindowStrategy_private_offset,@object # @GimpMultiWindowStrategy_private_offset
	.local	GimpMultiWindowStrategy_private_offset
	.comm	GimpMultiWindowStrategy_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
