	.text
	.file	"gimpcontainertreestore.bc"
	.globl	gimp_container_tree_store_get_type
	.align	16, 0x90
	.type	gimp_container_tree_store_get_type,@function
gimp_container_tree_store_get_type:     # @gimp_container_tree_store_get_type
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
	movq	gimp_container_tree_store_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_container_tree_store_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_tree_store_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$168, %edx
	movabsq	$gimp_container_tree_store_class_intern_init, %rdi
	movl	$112, %r8d
	movabsq	$gimp_container_tree_store_init, %rcx
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
	movabsq	$gimp_container_tree_store_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_container_tree_store_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_container_tree_store_get_type, .Lfunc_end0-gimp_container_tree_store_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_store_class_intern_init,@function
gimp_container_tree_store_class_intern_init: # @gimp_container_tree_store_class_intern_init
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
	movq	%rax, gimp_container_tree_store_parent_class
	cmpl	$0, GimpContainerTreeStore_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpContainerTreeStore_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_container_tree_store_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_container_tree_store_class_intern_init, .Lfunc_end1-gimp_container_tree_store_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_store_init,@function
gimp_container_tree_store_init:         # @gimp_container_tree_store_init
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
	.size	gimp_container_tree_store_init, .Lfunc_end2-gimp_container_tree_store_init
	.cfi_endproc

	.globl	gimp_container_tree_store_new
	.align	16, 0x90
	.type	gimp_container_tree_store_new,@function
gimp_container_tree_store_new:          # @gimp_container_tree_store_new
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_23
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpl	$5, -20(%rbp)
	jl	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_23
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_23
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	callq	gimp_container_tree_store_get_type
	movabsq	$.L.str.5, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_store_set_column_types
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB3_23:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_container_tree_store_new, .Lfunc_end3-gimp_container_tree_store_new
	.cfi_endproc

	.globl	gimp_container_tree_store_add_renderer_cell
	.align	16, 0x90
	.type	gimp_container_tree_store_add_renderer_cell,@function
gimp_container_tree_store_add_renderer_cell: # @gimp_container_tree_store_add_renderer_cell
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_tree_store_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_add_renderer_cell, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_cell_renderer_viewable_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_add_renderer_cell, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, 8(%rsi)
.LBB4_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_container_tree_store_add_renderer_cell, .Lfunc_end4-gimp_container_tree_store_add_renderer_cell
	.cfi_endproc

	.globl	gimp_container_tree_store_set_use_name
	.align	16, 0x90
	.type	gimp_container_tree_store_set_use_name,@function
gimp_container_tree_store_set_use_name: # @gimp_container_tree_store_set_use_name
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_tree_store_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_set_use_name, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB5_14
# BB#13:                                # %if.then.15
	movl	$80, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-24(%rbp), %rdx
	movl	%eax, 16(%rdx)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB5_14:                               # %if.end.19
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_container_tree_store_set_use_name, .Lfunc_end5-gimp_container_tree_store_set_use_name
	.cfi_endproc

	.globl	gimp_container_tree_store_get_use_name
	.align	16, 0x90
	.type	gimp_container_tree_store_get_use_name,@function
gimp_container_tree_store_get_use_name: # @gimp_container_tree_store_get_use_name
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_tree_store_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_get_use_name, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	16(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_container_tree_store_get_use_name, .Lfunc_end6-gimp_container_tree_store_get_use_name
	.cfi_endproc

	.globl	gimp_container_tree_store_set_context
	.align	16, 0x90
	.type	gimp_container_tree_store_set_context,@function
gimp_container_tree_store_set_context:  # @gimp_container_tree_store_set_context
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_tree_store_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_set_context, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_container_tree_store_set_context_foreach, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	gtk_tree_model_foreach
.LBB7_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_container_tree_store_set_context, .Lfunc_end7-gimp_container_tree_store_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_store_set_context_foreach,@function
gimp_container_tree_store_set_context_foreach: # @gimp_container_tree_store_set_context_foreach
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
	xorl	%eax, %eax
	leaq	-48(%rbp), %r8
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, %edx
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_view_renderer_set_context
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_container_tree_store_set_context_foreach, .Lfunc_end8-gimp_container_tree_store_set_context_foreach
	.cfi_endproc

	.globl	gimp_container_tree_store_insert_item
	.align	16, 0x90
	.type	gimp_container_tree_store_insert_item,@function
gimp_container_tree_store_insert_item:  # @gimp_container_tree_store_insert_item
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_container_tree_store_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_insert_item, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_16
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	cmpl	$-1, -36(%rbp)
	jne	.LBB9_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_store_append
	jmp	.LBB9_15
.LBB9_14:                               # %if.else.15
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_tree_store_insert
.LBB9_15:                               # %if.end.18
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_container_tree_store_set
	leaq	-72(%rbp), %rdi
	callq	gtk_tree_iter_copy
	movq	%rax, -8(%rbp)
.LBB9_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_container_tree_store_insert_item, .Lfunc_end9-gimp_container_tree_store_insert_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_store_set,@function
gimp_container_tree_store_set:          # @gimp_container_tree_store_set
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_container_view_get_context
	leaq	-64(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_container_view_get_view_size
	xorl	%r8d, %r8d
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rsi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	callq	gimp_view_renderer_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_view_renderer_set_viewable
	movq	-48(%rbp), %rdi
	callq	gimp_view_renderer_remove_idle
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_container_tree_store_renderer_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	cmpl	$0, 16(%rcx)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -56(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -56(%rbp)
.LBB10_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$3, %ecx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	%r9d, -104(%rbp)        # 4-byte Spill
	movq	%r10, %r9
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	callq	gtk_tree_store_set
	movq	-32(%rbp), %rcx
	cmpl	$0, 16(%rcx)
	jne	.LBB10_5
# BB#4:                                 # %if.then.13
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB10_5:                               # %if.end.14
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_container_tree_store_set, .Lfunc_end10-gimp_container_tree_store_set
	.cfi_endproc

	.globl	gimp_container_tree_store_remove_item
	.align	16, 0x90
	.type	gimp_container_tree_store_remove_item,@function
gimp_container_tree_store_remove_item:  # @gimp_container_tree_store_remove_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB11_8
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_store_remove
	movq	-8(%rbp), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_n_children
	cmpl	$0, %eax
	jne	.LBB11_7
# BB#2:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB11_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movabsq	$.L.str.9, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	g_object_set
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB11_3
.LBB11_6:                               # %for.end
	jmp	.LBB11_7
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.11
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_container_tree_store_remove_item, .Lfunc_end11-gimp_container_tree_store_remove_item
	.cfi_endproc

	.globl	gimp_container_tree_store_reorder_item
	.align	16, 0x90
	.type	gimp_container_tree_store_reorder_item,@function
gimp_container_tree_store_reorder_item: # @gimp_container_tree_store_reorder_item
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_container_tree_store_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_reorder_item, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_29
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_14
# BB#13:                                # %if.then.14
	jmp	.LBB12_29
.LBB12_14:                              # %if.end.15
	movq	-16(%rbp), %rdi
	callq	gimp_viewable_get_parent
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB12_16
# BB#15:                                # %if.then.18
	movq	-48(%rbp), %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -56(%rbp)
	jmp	.LBB12_17
.LBB12_16:                              # %if.else.20
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -56(%rbp)
.LBB12_17:                              # %if.end.22
	cmpl	$-1, -20(%rbp)
	je	.LBB12_19
# BB#18:                                # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	-56(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_container_get_n_children
	subl	$1, %eax
	movl	-156(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB12_20
.LBB12_19:                              # %if.then.26
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_store_move_before
	jmp	.LBB12_29
.LBB12_20:                              # %if.else.29
	cmpl	$0, -20(%rbp)
	jne	.LBB12_22
# BB#21:                                # %if.then.31
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_store_move_after
	jmp	.LBB12_28
.LBB12_22:                              # %if.else.34
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_tree_path_get_indices
	movq	%rax, -136(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_tree_path_get_depth
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	movq	-136(%rbp), %rdi
	movl	(%rdi,%rsi,4), %eax
	movl	%eax, -140(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-140(%rbp), %eax
	je	.LBB12_27
# BB#23:                                # %if.then.47
	movl	-20(%rbp), %eax
	movl	-124(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-136(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	movq	-8(%rbp), %rdx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter
	movl	-20(%rbp), %ecx
	cmpl	-140(%rbp), %ecx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jle	.LBB12_25
# BB#24:                                # %if.then.55
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_store_move_after
	jmp	.LBB12_26
.LBB12_25:                              # %if.else.58
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_store_move_before
.LBB12_26:                              # %if.end.61
	jmp	.LBB12_27
.LBB12_27:                              # %if.end.62
	movq	-88(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB12_28:                              # %if.end.63
	jmp	.LBB12_29
.LBB12_29:                              # %if.end.64
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_container_tree_store_reorder_item, .Lfunc_end12-gimp_container_tree_store_reorder_item
	.cfi_endproc

	.globl	gimp_container_tree_store_rename_item
	.align	16, 0x90
	.type	gimp_container_tree_store_rename_item,@function
gimp_container_tree_store_rename_item:  # @gimp_container_tree_store_rename_item
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_container_tree_store_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_rename_item, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_24
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	cmpq	$0, -32(%rbp)
	je	.LBB13_23
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB13_15
# BB#14:                                # %if.then.19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -80(%rbp)
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.21
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -80(%rbp)
.LBB13_16:                              # %if.end.23
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-16(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rsi
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_store_set
	cmpq	$0, -80(%rbp)
	je	.LBB13_20
# BB#17:                                # %land.lhs.true.29
	cmpq	$0, -88(%rbp)
	je	.LBB13_20
# BB#18:                                # %land.lhs.true.31
	movq	-80(%rbp), %rdi
	callq	strlen
	movq	-88(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-120(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jae	.LBB13_20
# BB#19:                                # %if.then.35
	movl	$1, -36(%rbp)
.LBB13_20:                              # %if.end.36
	movq	-72(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB13_22
# BB#21:                                # %if.then.39
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB13_22:                              # %if.end.40
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB13_23:                              # %if.end.41
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB13_24:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_container_tree_store_rename_item, .Lfunc_end13-gimp_container_tree_store_rename_item
	.cfi_endproc

	.globl	gimp_container_tree_store_clear_items
	.align	16, 0x90
	.type	gimp_container_tree_store_clear_items,@function
gimp_container_tree_store_clear_items:  # @gimp_container_tree_store_clear_items
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_container_tree_store_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_clear_items, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_18
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_store_clear
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_n_children
	cmpl	$0, %eax
	jne	.LBB14_18
# BB#13:                                # %if.then.17
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB14_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB14_17
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB14_14 Depth=1
	movabsq	$.L.str.9, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	g_object_set
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB14_14 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB14_14
.LBB14_17:                              # %for.end
	jmp	.LBB14_18
.LBB14_18:                              # %if.end.23
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_container_tree_store_clear_items, .Lfunc_end14-gimp_container_tree_store_clear_items
	.cfi_endproc

	.globl	gimp_container_tree_store_set_view_size
	.align	16, 0x90
	.type	gimp_container_tree_store_set_view_size,@function
gimp_container_tree_store_set_view_size: # @gimp_container_tree_store_set_view_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_tree_store_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_set_view_size, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-24(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	addq	$4, %rsi
	callq	gimp_container_view_get_view_size
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_container_tree_store_set_view_size_foreach, %rsi
	leaq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	gtk_tree_model_foreach
.LBB15_13:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_container_tree_store_set_view_size, .Lfunc_end15-gimp_container_tree_store_set_view_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_store_set_view_size_foreach,@function
gimp_container_tree_store_set_view_size_foreach: # @gimp_container_tree_store_set_view_size_foreach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	leaq	-48(%rbp), %r8
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, %edx
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %edx
	callq	gimp_view_renderer_set_size
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_container_tree_store_set_view_size_foreach, .Lfunc_end16-gimp_container_tree_store_set_view_size_foreach
	.cfi_endproc

	.globl	gimp_container_tree_store_columns_init
	.align	16, 0x90
	.type	gimp_container_tree_store_columns_init,@function
gimp_container_tree_store_columns_init: # @gimp_container_tree_store_columns_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB17_3
# BB#2:                                 # %if.then
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_columns_init, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_40
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	jmp	.LBB17_6
.LBB17_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB17_8
# BB#7:                                 # %if.then.3
	jmp	.LBB17_9
.LBB17_8:                               # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_columns_init, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_40
.LBB17_9:                               # %if.end.5
	jmp	.LBB17_10
.LBB17_10:                              # %do.end.6
	jmp	.LBB17_11
.LBB17_11:                              # %do.body.7
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB17_13
# BB#12:                                # %if.then.9
	jmp	.LBB17_14
.LBB17_13:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_columns_init, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_40
.LBB17_14:                              # %if.end.11
	jmp	.LBB17_15
.LBB17_15:                              # %do.end.12
	jmp	.LBB17_16
.LBB17_16:                              # %do.body.13
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_tree_store_columns_add
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	jne	.LBB17_18
# BB#17:                                # %if.then.16
	jmp	.LBB17_19
.LBB17_18:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.12, %rsi
	movl	$507, %edx              # imm = 0x1FB
	movabsq	$.L__func__.gimp_container_tree_store_columns_init, %rcx
	movabsq	$.L.str.13, %r8
	callq	g_assertion_message_expr
.LBB17_19:                              # %if.end.18
	jmp	.LBB17_20
.LBB17_20:                              # %do.end.19
	jmp	.LBB17_21
.LBB17_21:                              # %do.body.20
	movl	$64, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_tree_store_columns_add
	movl	$1, %ecx
	cmpl	%eax, %ecx
	jne	.LBB17_23
# BB#22:                                # %if.then.23
	jmp	.LBB17_24
.LBB17_23:                              # %if.else.24
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.12, %rsi
	movl	$511, %edx              # imm = 0x1FF
	movabsq	$.L__func__.gimp_container_tree_store_columns_init, %rcx
	movabsq	$.L.str.14, %r8
	callq	g_assertion_message_expr
.LBB17_24:                              # %if.end.25
	jmp	.LBB17_25
.LBB17_25:                              # %do.end.26
	jmp	.LBB17_26
.LBB17_26:                              # %do.body.27
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	pango_attr_list_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_tree_store_columns_add
	movl	$2, %ecx
	cmpl	%eax, %ecx
	jne	.LBB17_28
# BB#27:                                # %if.then.31
	jmp	.LBB17_29
.LBB17_28:                              # %if.else.32
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.12, %rsi
	movl	$515, %edx              # imm = 0x203
	movabsq	$.L__func__.gimp_container_tree_store_columns_init, %rcx
	movabsq	$.L.str.15, %r8
	callq	g_assertion_message_expr
.LBB17_29:                              # %if.end.33
	jmp	.LBB17_30
.LBB17_30:                              # %do.end.34
	jmp	.LBB17_31
.LBB17_31:                              # %do.body.35
	movl	$20, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_tree_store_columns_add
	movl	$3, %ecx
	cmpl	%eax, %ecx
	jne	.LBB17_33
# BB#32:                                # %if.then.38
	jmp	.LBB17_34
.LBB17_33:                              # %if.else.39
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.12, %rsi
	movl	$519, %edx              # imm = 0x207
	movabsq	$.L__func__.gimp_container_tree_store_columns_init, %rcx
	movabsq	$.L.str.16, %r8
	callq	g_assertion_message_expr
.LBB17_34:                              # %if.end.40
	jmp	.LBB17_35
.LBB17_35:                              # %do.end.41
	jmp	.LBB17_36
.LBB17_36:                              # %do.body.42
	movl	$68, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_tree_store_columns_add
	movl	$4, %ecx
	cmpl	%eax, %ecx
	jne	.LBB17_38
# BB#37:                                # %if.then.45
	jmp	.LBB17_39
.LBB17_38:                              # %if.else.46
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.12, %rsi
	movl	$523, %edx              # imm = 0x20B
	movabsq	$.L__func__.gimp_container_tree_store_columns_init, %rcx
	movabsq	$.L.str.17, %r8
	callq	g_assertion_message_expr
.LBB17_39:                              # %if.end.47
	jmp	.LBB17_40
.LBB17_40:                              # %do.end.48
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_container_tree_store_columns_init, .Lfunc_end17-gimp_container_tree_store_columns_init
	.cfi_endproc

	.globl	gimp_container_tree_store_columns_add
	.align	16, 0x90
	.type	gimp_container_tree_store_columns_add,@function
gimp_container_tree_store_columns_add:  # @gimp_container_tree_store_columns_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB18_3
# BB#2:                                 # %if.then
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_columns_add, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_16
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %do.end
	jmp	.LBB18_6
.LBB18_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB18_8
# BB#7:                                 # %if.then.3
	jmp	.LBB18_9
.LBB18_8:                               # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_columns_add, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_16
.LBB18_9:                               # %if.end.5
	jmp	.LBB18_10
.LBB18_10:                              # %do.end.6
	jmp	.LBB18_11
.LBB18_11:                              # %do.body.7
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jl	.LBB18_13
# BB#12:                                # %if.then.9
	jmp	.LBB18_14
.LBB18_13:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_store_columns_add, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_16
.LBB18_14:                              # %if.end.11
	jmp	.LBB18_15
.LBB18_15:                              # %do.end.12
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	addl	$1, %esi
	movl	%esi, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	subl	$1, %esi
	movl	%esi, -4(%rbp)
.LBB18_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_container_tree_store_columns_add, .Lfunc_end18-gimp_container_tree_store_columns_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_store_class_init,@function
gimp_container_tree_store_class_init:   # @gimp_container_tree_store_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_container_tree_store_get_property, %rsi
	movabsq	$gimp_container_tree_store_set_property, %rdi
	movabsq	$gimp_container_tree_store_finalize, %rcx
	movabsq	$gimp_container_tree_store_constructed, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$24, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_container_tree_store_class_init, .Lfunc_end19-gimp_container_tree_store_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_store_constructed,@function
gimp_container_tree_store_constructed:  # @gimp_container_tree_store_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_container_tree_store_parent_class, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_container_tree_store_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB20_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_container_tree_store_constructed, .Lfunc_end20-gimp_container_tree_store_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_store_finalize,@function
gimp_container_tree_store_finalize:     # @gimp_container_tree_store_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB21_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_container_tree_store_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_container_tree_store_finalize, .Lfunc_end21-gimp_container_tree_store_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_store_set_property,@function
gimp_container_tree_store_set_property: # @gimp_container_tree_store_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB22_1
	jmp	.LBB22_7
.LBB22_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB22_2
	jmp	.LBB22_3
.LBB22_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB22_6
.LBB22_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 16(%rdi)
	jmp	.LBB22_6
.LBB22_3:                               # %sw.default
	jmp	.LBB22_4
.LBB22_4:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.12, %rsi
	movl	$155, %edx
	movabsq	$.L.str.20, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB22_6
.LBB22_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_container_tree_store_set_property, .Lfunc_end22-gimp_container_tree_store_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_store_get_property,@function
gimp_container_tree_store_get_property: # @gimp_container_tree_store_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB23_1
	jmp	.LBB23_7
.LBB23_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB23_2
	jmp	.LBB23_3
.LBB23_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB23_6
.LBB23_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	16(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB23_6
.LBB23_3:                               # %sw.default
	jmp	.LBB23_4
.LBB23_4:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.12, %rsi
	movl	$178, %edx
	movabsq	$.L.str.20, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB23_6
.LBB23_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_container_tree_store_get_property, .Lfunc_end23-gimp_container_tree_store_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
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
	je	.LBB24_2
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
.LBB24_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end24:
	.size	g_warning, .Lfunc_end24-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_store_renderer_update,@function
gimp_container_tree_store_renderer_update: # @gimp_container_tree_store_renderer_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gimp_container_view_lookup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_model_row_changed
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB25_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_container_tree_store_renderer_update, .Lfunc_end25-gimp_container_tree_store_renderer_update
	.cfi_endproc

	.type	gimp_container_tree_store_get_type.g_define_type_id__volatile,@object # @gimp_container_tree_store_get_type.g_define_type_id__volatile
	.local	gimp_container_tree_store_get_type.g_define_type_id__volatile
	.comm	gimp_container_tree_store_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpContainerTreeStore"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_container_tree_store_new,@object # @__func__.gimp_container_tree_store_new
.L__func__.gimp_container_tree_store_new:
	.asciz	"gimp_container_tree_store_new"
	.size	.L__func__.gimp_container_tree_store_new, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTAINER_VIEW (container_view)"
	.size	.L.str.2, 40

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"n_columns >= GIMP_CONTAINER_TREE_STORE_N_COLUMNS"
	.size	.L.str.3, 49

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"types != NULL"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"container-view"
	.size	.L.str.5, 15

	.type	.L__func__.gimp_container_tree_store_add_renderer_cell,@object # @__func__.gimp_container_tree_store_add_renderer_cell
.L__func__.gimp_container_tree_store_add_renderer_cell:
	.asciz	"gimp_container_tree_store_add_renderer_cell"
	.size	.L__func__.gimp_container_tree_store_add_renderer_cell, 44

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_CONTAINER_TREE_STORE (store)"
	.size	.L.str.6, 37

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_CELL_RENDERER_VIEWABLE (cell)"
	.size	.L.str.7, 38

	.type	.L__func__.gimp_container_tree_store_set_use_name,@object # @__func__.gimp_container_tree_store_set_use_name
.L__func__.gimp_container_tree_store_set_use_name:
	.asciz	"gimp_container_tree_store_set_use_name"
	.size	.L__func__.gimp_container_tree_store_set_use_name, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"use-name"
	.size	.L.str.8, 9

	.type	.L__func__.gimp_container_tree_store_get_use_name,@object # @__func__.gimp_container_tree_store_get_use_name
.L__func__.gimp_container_tree_store_get_use_name:
	.asciz	"gimp_container_tree_store_get_use_name"
	.size	.L__func__.gimp_container_tree_store_get_use_name, 39

	.type	.L__func__.gimp_container_tree_store_set_context,@object # @__func__.gimp_container_tree_store_set_context
.L__func__.gimp_container_tree_store_set_context:
	.asciz	"gimp_container_tree_store_set_context"
	.size	.L__func__.gimp_container_tree_store_set_context, 38

	.type	.L__func__.gimp_container_tree_store_insert_item,@object # @__func__.gimp_container_tree_store_insert_item
.L__func__.gimp_container_tree_store_insert_item:
	.asciz	"gimp_container_tree_store_insert_item"
	.size	.L__func__.gimp_container_tree_store_insert_item, 38

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"renderer"
	.size	.L.str.9, 9

	.type	.L__func__.gimp_container_tree_store_reorder_item,@object # @__func__.gimp_container_tree_store_reorder_item
.L__func__.gimp_container_tree_store_reorder_item:
	.asciz	"gimp_container_tree_store_reorder_item"
	.size	.L__func__.gimp_container_tree_store_reorder_item, 39

	.type	.L__func__.gimp_container_tree_store_rename_item,@object # @__func__.gimp_container_tree_store_rename_item
.L__func__.gimp_container_tree_store_rename_item:
	.asciz	"gimp_container_tree_store_rename_item"
	.size	.L__func__.gimp_container_tree_store_rename_item, 38

	.type	.L__func__.gimp_container_tree_store_clear_items,@object # @__func__.gimp_container_tree_store_clear_items
.L__func__.gimp_container_tree_store_clear_items:
	.asciz	"gimp_container_tree_store_clear_items"
	.size	.L__func__.gimp_container_tree_store_clear_items, 38

	.type	.L__func__.gimp_container_tree_store_set_view_size,@object # @__func__.gimp_container_tree_store_set_view_size
.L__func__.gimp_container_tree_store_set_view_size:
	.asciz	"gimp_container_tree_store_set_view_size"
	.size	.L__func__.gimp_container_tree_store_set_view_size, 40

	.type	.L__func__.gimp_container_tree_store_columns_init,@object # @__func__.gimp_container_tree_store_columns_init
.L__func__.gimp_container_tree_store_columns_init:
	.asciz	"gimp_container_tree_store_columns_init"
	.size	.L__func__.gimp_container_tree_store_columns_init, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"n_types != NULL"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"*n_types == 0"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimpcontainertreestore.c"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_CONTAINER_TREE_STORE_COLUMN_RENDERER == gimp_container_tree_store_columns_add (types, n_types, GIMP_TYPE_VIEW_RENDERER)"
	.size	.L.str.13, 125

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP_CONTAINER_TREE_STORE_COLUMN_NAME == gimp_container_tree_store_columns_add (types, n_types, G_TYPE_STRING)"
	.size	.L.str.14, 111

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_CONTAINER_TREE_STORE_COLUMN_NAME_ATTRIBUTES == gimp_container_tree_store_columns_add (types, n_types, PANGO_TYPE_ATTR_LIST)"
	.size	.L.str.15, 129

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_CONTAINER_TREE_STORE_COLUMN_NAME_SENSITIVE == gimp_container_tree_store_columns_add (types, n_types, G_TYPE_BOOLEAN)"
	.size	.L.str.16, 122

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GIMP_CONTAINER_TREE_STORE_COLUMN_USER_DATA == gimp_container_tree_store_columns_add (types, n_types, G_TYPE_POINTER)"
	.size	.L.str.17, 117

	.type	.L__func__.gimp_container_tree_store_columns_add,@object # @__func__.gimp_container_tree_store_columns_add
.L__func__.gimp_container_tree_store_columns_add:
	.asciz	"gimp_container_tree_store_columns_add"
	.size	.L__func__.gimp_container_tree_store_columns_add, 38

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"*n_types >= 0"
	.size	.L.str.18, 14

	.type	gimp_container_tree_store_parent_class,@object # @gimp_container_tree_store_parent_class
	.local	gimp_container_tree_store_parent_class
	.comm	gimp_container_tree_store_parent_class,8,8
	.type	GimpContainerTreeStore_private_offset,@object # @GimpContainerTreeStore_private_offset
	.local	GimpContainerTreeStore_private_offset
	.comm	GimpContainerTreeStore_private_offset,4,4
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.19, 54

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"property"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"update"
	.size	.L.str.21, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
