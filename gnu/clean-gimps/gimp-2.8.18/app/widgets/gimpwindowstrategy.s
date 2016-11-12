	.text
	.file	"gimpwindowstrategy.bc"
	.globl	gimp_window_strategy_interface_get_type
	.align	16, 0x90
	.type	gimp_window_strategy_interface_get_type,@function
gimp_window_strategy_interface_get_type: # @gimp_window_strategy_interface_get_type
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
	cmpq	$0, gimp_window_strategy_interface_get_type.iface_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	movabsq	$gimp_window_strategy_interface_get_type.iface_info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_window_strategy_interface_get_type.iface_type
.LBB0_2:                                # %if.end
	movq	gimp_window_strategy_interface_get_type.iface_type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_window_strategy_interface_get_type, .Lfunc_end0-gimp_window_strategy_interface_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_window_strategy_iface_base_init,@function
gimp_window_strategy_iface_base_init:   # @gimp_window_strategy_iface_base_init
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
	movq	%rdi, -8(%rbp)
	cmpl	$0, gimp_window_strategy_iface_base_init.initialized
	je	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movl	$1, gimp_window_strategy_iface_base_init.initialized
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
.LBB1_3:                                # %return
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_window_strategy_iface_base_init, .Lfunc_end1-gimp_window_strategy_iface_base_init
	.cfi_endproc

	.globl	gimp_window_strategy_show_dockable_dialog
	.align	16, 0x90
	.type	gimp_window_strategy_show_dockable_dialog,@function
gimp_window_strategy_show_dockable_dialog: # @gimp_window_strategy_show_dockable_dialog
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_window_strategy_interface_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_window_strategy_show_dockable_dialog, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_15
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB2_14
# BB#13:                                # %if.then.15
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_15
.LBB2_14:                               # %if.end.18
	movq	$0, -8(%rbp)
.LBB2_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_window_strategy_show_dockable_dialog, .Lfunc_end2-gimp_window_strategy_show_dockable_dialog
	.cfi_endproc

	.type	gimp_window_strategy_interface_get_type.iface_type,@object # @gimp_window_strategy_interface_get_type.iface_type
	.local	gimp_window_strategy_interface_get_type.iface_type
	.comm	gimp_window_strategy_interface_get_type.iface_type,8,8
	.type	gimp_window_strategy_interface_get_type.iface_info,@object # @gimp_window_strategy_interface_get_type.iface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_window_strategy_interface_get_type.iface_info:
	.short	24                      # 0x18
	.zero	6
	.quad	gimp_window_strategy_iface_base_init
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	gimp_window_strategy_interface_get_type.iface_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpWindowStrategyInterface"
	.size	.L.str, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_window_strategy_show_dockable_dialog,@object # @__func__.gimp_window_strategy_show_dockable_dialog
.L__func__.gimp_window_strategy_show_dockable_dialog:
	.asciz	"gimp_window_strategy_show_dockable_dialog"
	.size	.L__func__.gimp_window_strategy_show_dockable_dialog, 42

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_WINDOW_STRATEGY (strategy)"
	.size	.L.str.2, 35

	.type	gimp_window_strategy_iface_base_init.initialized,@object # @gimp_window_strategy_iface_base_init.initialized
	.local	gimp_window_strategy_iface_base_init.initialized
	.comm	gimp_window_strategy_iface_base_init.initialized,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
