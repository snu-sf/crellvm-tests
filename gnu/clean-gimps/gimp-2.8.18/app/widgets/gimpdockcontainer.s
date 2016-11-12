	.text
	.file	"gimpdockcontainer.bc"
	.globl	gimp_dock_container_interface_get_type
	.align	16, 0x90
	.type	gimp_dock_container_interface_get_type,@function
gimp_dock_container_interface_get_type: # @gimp_dock_container_interface_get_type
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
	subq	$16, %rsp
	cmpq	$0, gimp_dock_container_interface_get_type.iface_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	movabsq	$gimp_dock_container_interface_get_type.iface_info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_dock_container_interface_get_type.iface_type
	movq	gimp_dock_container_interface_get_type.iface_type, %rdi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_add_prerequisite
.LBB0_2:                                # %if.end
	movq	gimp_dock_container_interface_get_type.iface_type, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dock_container_interface_get_type, .Lfunc_end0-gimp_dock_container_interface_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_container_iface_base_init,@function
gimp_dock_container_iface_base_init:    # @gimp_dock_container_iface_base_init
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
	cmpl	$0, gimp_dock_container_iface_base_init.initialized
	je	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movl	$1, gimp_dock_container_iface_base_init.initialized
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
.LBB1_3:                                # %return
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dock_container_iface_base_init, .Lfunc_end1-gimp_dock_container_iface_base_init
	.cfi_endproc

	.globl	gimp_dock_container_get_docks
	.align	16, 0x90
	.type	gimp_dock_container_get_docks,@function
gimp_dock_container_get_docks:          # @gimp_dock_container_get_docks
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_container_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_container_get_docks, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_15
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB2_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_15
.LBB2_14:                               # %if.end.18
	movq	$0, -8(%rbp)
.LBB2_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dock_container_get_docks, .Lfunc_end2-gimp_dock_container_get_docks
	.cfi_endproc

	.globl	gimp_dock_container_get_ui_manager
	.align	16, 0x90
	.type	gimp_dock_container_get_ui_manager,@function
gimp_dock_container_get_ui_manager:     # @gimp_dock_container_get_ui_manager
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_container_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_container_get_ui_manager, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_15
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB3_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_15
.LBB3_14:                               # %if.end.18
	movq	$0, -8(%rbp)
.LBB3_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dock_container_get_ui_manager, .Lfunc_end3-gimp_dock_container_get_ui_manager
	.cfi_endproc

	.globl	gimp_dock_container_add_dock
	.align	16, 0x90
	.type	gimp_dock_container_add_dock,@function
gimp_dock_container_add_dock:           # @gimp_dock_container_add_dock
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dock_container_interface_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_container_add_dock, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_14
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB4_14
# BB#13:                                # %if.then.15
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB4_14:                               # %if.end.17
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dock_container_add_dock, .Lfunc_end4-gimp_dock_container_add_dock
	.cfi_endproc

	.globl	gimp_dock_container_get_dock_side
	.align	16, 0x90
	.type	gimp_dock_container_get_dock_side,@function
gimp_dock_container_get_dock_side:      # @gimp_dock_container_get_dock_side
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
	movq	%rax, -40(%rbp)
	callq	gimp_dock_container_interface_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dock_container_get_dock_side, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.15
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_15
.LBB5_14:                               # %if.end.18
	movl	$-1, -4(%rbp)
.LBB5_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dock_container_get_dock_side, .Lfunc_end5-gimp_dock_container_get_dock_side
	.cfi_endproc

	.type	gimp_dock_container_interface_get_type.iface_type,@object # @gimp_dock_container_interface_get_type.iface_type
	.local	gimp_dock_container_interface_get_type.iface_type
	.comm	gimp_dock_container_interface_get_type.iface_type,8,8
	.type	gimp_dock_container_interface_get_type.iface_info,@object # @gimp_dock_container_interface_get_type.iface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_dock_container_interface_get_type.iface_info:
	.short	48                      # 0x30
	.zero	6
	.quad	gimp_dock_container_iface_base_init
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	gimp_dock_container_interface_get_type.iface_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDockContainerInterface"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_dock_container_get_docks,@object # @__func__.gimp_dock_container_get_docks
.L__func__.gimp_dock_container_get_docks:
	.asciz	"gimp_dock_container_get_docks"
	.size	.L__func__.gimp_dock_container_get_docks, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DOCK_CONTAINER (container)"
	.size	.L.str.2, 35

	.type	.L__func__.gimp_dock_container_get_ui_manager,@object # @__func__.gimp_dock_container_get_ui_manager
.L__func__.gimp_dock_container_get_ui_manager:
	.asciz	"gimp_dock_container_get_ui_manager"
	.size	.L__func__.gimp_dock_container_get_ui_manager, 35

	.type	.L__func__.gimp_dock_container_add_dock,@object # @__func__.gimp_dock_container_add_dock
.L__func__.gimp_dock_container_add_dock:
	.asciz	"gimp_dock_container_add_dock"
	.size	.L__func__.gimp_dock_container_add_dock, 29

	.type	.L__func__.gimp_dock_container_get_dock_side,@object # @__func__.gimp_dock_container_get_dock_side
.L__func__.gimp_dock_container_get_dock_side:
	.asciz	"gimp_dock_container_get_dock_side"
	.size	.L__func__.gimp_dock_container_get_dock_side, 34

	.type	gimp_dock_container_iface_base_init.initialized,@object # @gimp_dock_container_iface_base_init.initialized
	.local	gimp_dock_container_iface_base_init.initialized
	.comm	gimp_dock_container_iface_base_init.initialized,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
