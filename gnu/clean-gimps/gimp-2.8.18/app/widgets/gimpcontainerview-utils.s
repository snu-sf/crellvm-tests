	.text
	.file	"gimpcontainerview-utils.bc"
	.globl	gimp_container_view_get_by_dockable
	.align	16, 0x90
	.type	gimp_container_view_get_by_dockable,@function
gimp_container_view_get_by_dockable:    # @gimp_container_view_get_by_dockable
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dockable_get_type
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
	movabsq	$.L__func__.gimp_container_view_get_by_dockable, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_34
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_33
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_container_editor_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.24
	movl	$0, -68(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.25
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.28
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.32
	movl	$1, -68(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.33
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_19:                               # %if.end.35
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.36
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.39
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_34
.LBB0_22:                               # %if.else.42
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_24
# BB#23:                                # %if.then.51
	movl	$0, -92(%rbp)
	jmp	.LBB0_29
.LBB0_24:                               # %if.else.52
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_27
# BB#25:                                # %land.lhs.true.55
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_27
# BB#26:                                # %if.then.59
	movl	$1, -92(%rbp)
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.60
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_28:                               # %if.end.62
	jmp	.LBB0_29
.LBB0_29:                               # %if.end.63
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_31
# BB#30:                                # %if.then.66
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB0_34
.LBB0_31:                               # %if.end.69
	jmp	.LBB0_32
.LBB0_32:                               # %if.end.70
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.71
	movq	$0, -8(%rbp)
.LBB0_34:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_container_view_get_by_dockable, .Lfunc_end0-gimp_container_view_get_by_dockable
	.cfi_endproc

	.globl	gimp_container_view_remove_active
	.align	16, 0x90
	.type	gimp_container_view_remove_active,@function
gimp_container_view_remove_active:      # @gimp_container_view_remove_active
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_container_view_remove_active, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_19
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB1_19
# BB#13:                                # %land.lhs.true.14
	cmpq	$0, -24(%rbp)
	je	.LBB1_19
# BB#14:                                # %if.then.16
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_18
# BB#15:                                # %if.then.22
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_container_get_neighbor_of
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.26
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_context_set_by_type
.LBB1_17:                               # %if.end.27
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_container_remove
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB1_18:                               # %if.end.29
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.30
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_container_view_remove_active, .Lfunc_end1-gimp_container_view_remove_active
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_container_view_get_by_dockable,@object # @__func__.gimp_container_view_get_by_dockable
.L__func__.gimp_container_view_get_by_dockable:
	.asciz	"gimp_container_view_get_by_dockable"
	.size	.L__func__.gimp_container_view_get_by_dockable, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DOCKABLE (dockable)"
	.size	.L.str.1, 28

	.type	.L__func__.gimp_container_view_remove_active,@object # @__func__.gimp_container_view_remove_active
.L__func__.gimp_container_view_remove_active:
	.asciz	"gimp_container_view_remove_active"
	.size	.L__func__.gimp_container_view_remove_active, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTAINER_VIEW (view)"
	.size	.L.str.2, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
